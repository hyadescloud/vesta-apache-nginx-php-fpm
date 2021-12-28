#!/bin/bash
apt-get install php7.2-apcu php7.2-mbstring php7.2-bcmath php7.2-cli php7.2-curl php7.2-fpm php7.2-gd php7.2-intl php7.2-mysql php7.2-soap php7.2-xml php7.2-zip php7.2-memcache php7.2-memcached php7.2-zip
update-rc.d php7.2-fpm defaults
a2enconf php7.2-fpm
systemctl restart apache2
cp -r /etc/php/7.2/ /root/vst_install_backups/php7.2/
rm -f /etc/php/7.2/fpm/pool.d/*
wget http://dl.mycity.tech/vesta/php-fpm-tpl/PHP-FPM-72.stpl -O /usr/local/vesta/data/templates/web/apache2/PHP-FPM-72.stpl
wget http://dl.mycity.tech/vesta/php-fpm-tpl/PHP-FPM-72.tpl -O /usr/local/vesta/data/templates/web/apache2/PHP-FPM-72.tpl
wget http://dl.mycity.tech/vesta/php-fpm-tpl/PHP-FPM-72.sh -O /usr/local/vesta/data/templates/web/apache2/PHP-FPM-72.sh
chmod a+x /usr/local/vesta/data/templates/web/apache2/PHP-FPM-72.sh
