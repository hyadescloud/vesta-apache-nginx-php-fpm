#!/bin/bash
apt-get install php8.0-apcu php8.0-mbstring php8.0-bcmath php8.0-cli php8.0-curl php8.0-fpm php8.0-gd php8.0-intl php8.0-mysql php8.0-soap php8.0-xml php8.0-zip php8.0-memcache php8.0-memcached php8.0-zip php8.0-gmp
echo "RUN: update-rc.d php8.0-fpm defaults"
