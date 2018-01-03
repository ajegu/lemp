## Pré-requis

### Logiciels à installer
- Git    
- Virtualbox (>= 5.1) https://www.virtualbox.org/
- Vagrant (>= 2) https://www.vagrantup.com/
- Chef DK (>= 2.3.4) https://downloads.chef.io/chefdk

### Plugins à installer

Depuis une console : `vagrant plugin install vagrant-berkshelf`

## Installation de la VM

1. Récupérer le projet IHMPLUS-INFRA
2. Ouvrer une console et aller à la racine de projet
2. Lancer la commande `vagrant up` 

## Démarrer php-fpm

sudo /usr/local/sbin/php-fpm -c /etc/php.ini --pid /var/run/php-fpm.pid --fpm-config=/usr/local/etc/php-fpm.d/www.conf.default -D