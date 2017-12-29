name 'lemp'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'All Rights Reserved'
description 'Installs/Configures lemp'
long_description 'Installs/Configures lemp'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/lemp/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/lemp'

depends 'nginx', '~> 7.0.2'
depends 'selinux', '~> 2.1.0'
depends 'compat_resource'
depends 'yum-mysql-community', '~> 2.1.0'
depends 'mysql', '~> 8.5.1'
depends 'php', '~> 4.5.0'
depends 'git', '~> 8.0.0'
depends 'yum-epel', '~> 2.1.2'
depends 'nodejs', '~> 4.0.0'
depends 'composer', '~> 2.6.1'
depends 'phpunit', '~> 1.1.0'