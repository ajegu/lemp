#
# Cookbook:: lemp
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'nginx'

selinux_state "SELinux Disabled" do
    action :disabled
end

include_recipe 'yum-mysql-community::mysql56'

mysql_service 'web' do
    port '3306'
    version '5.6'
    initial_root_password '123456'
    action [:create, :start]
end

remote_file "#{Chef::Config[:file_cache_path]}/epel-release-latest-7.noarch.rpm" do
    source "https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm"
    action :create
end

rpm_package "epel-release-latest-7" do
    source "#{Chef::Config[:file_cache_path]}/epel-release-latest-7.noarch.rpm"
    action :install
end

remote_file "#{Chef::Config[:file_cache_path]}/remi-release-7.rpm" do
    source "http://rpms.remirepo.net/enterprise/remi-release-7.rpm"
    action :create
end

rpm_package "remi-release-7" do
    source "#{Chef::Config[:file_cache_path]}/remi-release-7.rpm"
    action :install
end

yum_package 'yum-utils'

execute 'enable remi-php72' do
    command 'yum-config-manager --enable remi-php72'
end

include_recipe 'php'

include_recipe 'git'

include_recipe 'nodejs' do
    user 'vagrant'
    group 'vagrant'
end

include_recipe 'composer'

include_recipe 'phpunit'

group 'web' do
    action :create
    members ['nginx', 'vagrant', 'apache']
    append true
end

directory '/app' do
    owner 'vagrant'
    group 'web'
    mode '0755'
    action :create
end
