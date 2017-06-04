#!/bin/bash
# My first script

service php7.1-fpm start;
nginx -g "daemon off;";

cd usr/share/nginx/html
php composer install

cd app
npm install

