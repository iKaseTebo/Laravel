#!/bin/bash
# My first script


service php7.2-fpm start && nginx -g "daemon off;"

mv composer /usr/local/bin/composer
chmod +x /usr/local/bin/composer

composer install
npm install

chgrp -R www-data storage bootstrap/cache
chmod -R ug+rwx storage bootstrap/cache
