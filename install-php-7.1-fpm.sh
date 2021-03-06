#!/bin/bash
apt-get install php7.1-apcu php7.1-mbstring php7.1-bcmath php7.1-cli php7.1-curl php7.1-fpm php7.1-gd php7.1-intl php7.1-mcrypt php7.1-mysql php7.1-soap php7.1-xml php7.1-zip php7.1-memcache php7.1-memcached php7.1-zip
update-rc.d php7.1-fpm defaults
a2enconf php7.1-fpm
systemctl restart apache2
cp -r /etc/php/7.1/ /root/vst_install_backups/php7.1/
rm -f /etc/php/7.1/fpm/pool.d/*
wget http://dl.mycity.tech/vesta/php-fpm-tpl/PHP-FPM-71.stpl -O /usr/local/vesta/data/templates/web/apache2/PHP-FPM-71.stpl
wget http://dl.mycity.tech/vesta/php-fpm-tpl/PHP-FPM-71.tpl -O /usr/local/vesta/data/templates/web/apache2/PHP-FPM-71.tpl
wget http://dl.mycity.tech/vesta/php-fpm-tpl/PHP-FPM-71.sh -O /usr/local/vesta/data/templates/web/apache2/PHP-FPM-71.sh
chmod a+x /usr/local/vesta/data/templates/web/apache2/PHP-FPM-71.sh
