#!/bin/bash
apt-get install php7.0-apcu php7.0-mbstring php7.0-bcmath php7.0-cli php7.0-curl php7.0-fpm php7.0-gd php7.0-intl php7.0-mcrypt php7.0-mysql php7.0-soap php7.0-xml php7.0-zip php7.0-memcache php7.0-memcached php7.0-zip
update-rc.d php7.0-fpm defaults
a2enconf php7.0-fpm
systemctl restart apache2
cp -r /etc/php/7.0/ /root/vst_install_backups/php7.0/
rm -f /etc/php/7.0/fpm/pool.d/*
wget http://dl.mycity.tech/vesta/php-fpm-tpl/PHP-FPM-70.stpl -O /usr/local/vesta/data/templates/web/apache2/PHP-FPM-70.stpl
wget http://dl.mycity.tech/vesta/php-fpm-tpl/PHP-FPM-70.tpl -O /usr/local/vesta/data/templates/web/apache2/PHP-FPM-70.tpl
wget http://dl.mycity.tech/vesta/php-fpm-tpl/PHP-FPM-70.sh -O /usr/local/vesta/data/templates/web/apache2/PHP-FPM-70.sh
chmod a+x /usr/local/vesta/data/templates/web/apache2/PHP-FPM-70.sh

