#
# Cookbook:: lemp
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

user 'web' do
    password '123456'    
    home '/home/web'
    shell '/bin/bash'  
end

include_recipe 'nginx'

group 'web' do
    action :modify
    members ['nginx', 'web']
    append true
end

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

include_recipe 'php'

include_recipe 'yum-epel'

include_recipe 'git'

include_recipe 'nodejs' do
    user 'vagrant'
    group 'vagrant'
end
include_recipe 'composer'
include_recipe 'phpunit'