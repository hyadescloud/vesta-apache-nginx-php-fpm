#!/bin/bash
apt-get install php7.4-apcu php7.4-mbstring php7.4-bcmath php7.4-cli php7.4-curl php7.4-fpm php7.4-gd php7.4-intl php7.4-mysql php7.4-soap php7.4-xml php7.4-zip php7.4-memcache php7.4-memcached php7.4-zip
update-rc.d php7.4-fpm defaults
