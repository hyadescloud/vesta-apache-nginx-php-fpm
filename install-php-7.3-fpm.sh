#!/bin/bash
apt-get install php7.3-apcu php7.3-mbstring php7.3-bcmath php7.3-cli php7.3-curl php7.3-fpm php7.3-gd php7.3-intl php7.3-mysql php7.3-soap php7.3-xml php7.3-zip php7.3-memcache php7.3-memcached php7.3-zip
update-rc.d php7.3-fpm defaults

cp -r /etc/php/7.3/ /root/vst_install_backups/php7.3/
rm -f /etc/php/7.3/fpm/pool.d/*
