#!/bin/bash
apt-get install php7.0-apcu php7.0-mbstring php7.0-bcmath php7.0-cli php7.0-curl php7.0-fpm php7.0-gd php7.0-intl php7.0-mcrypt php7.0-mysql php7.0-soap php7.0-xml php7.0-zip php7.0-memcache php7.0-memcached php7.0-zip php7.0-gmp
echo "RUN: update-rc.d php7.0-fpm defaults"
