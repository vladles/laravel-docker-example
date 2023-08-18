#!/bin/sh

# FIX FOR NGINX
mkdir /run/openrc
touch /run/openrc/softlevel
mkdir -p /run/nginx

cd /var/www

# php artisan migrate:fresh --seed
php artisan cache:clear
php artisan route:cache

/usr/bin/supervisord -c /etc/supervisord.conf
