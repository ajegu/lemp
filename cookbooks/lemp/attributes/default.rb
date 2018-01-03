default['nginx']['install_method'] = 'source'
default['nginx']['version'] = '1.12.2'

default['php']['packages'] = ['php', 'php-fpm', 'php-pear', 'php-mysqlnd', 'php-pecl-zip']
default['php']['directives'] = {
    'date.timezone': 'Europe/Paris',
    'short_open_tag': 'Off',
    'session.save_path': '/tmp',
    'always_populate_raw_post_data': '-1',
    'memory_limit': '2G'
}


default['phpunit']['install_method'] = 'phar'
default['phpunit']['phar_url'] = 'https://phar.phpunit.de/phpunit-6.phar'

default['composer']['url'] = 'https://getcomposer.org/download/1.5.6/composer.phar'
