#!/bin/bash
apt-get install php5.6-apcu php5.6-mbstring php5.6-bcmath php5.6-cli php5.6-curl php5.6-fpm php5.6-gd php5.6-intl php5.6-mcrypt php5.6-mysql php5.6-soap php5.6-xml php5.6-zip php5.6-memcache php5.6-memcached php5.6-zip
update-rc.d php5.6-fpm defaults

cp -r /etc/php/5.6/ /root/vst_install_backups/php5.6/
rm -f /etc/php/5.6/fpm/pool.d/*
