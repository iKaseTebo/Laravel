FROM ikasetebo/nginx-php7:v2.00
#
COPY ./entrypoint/entrypoint.sh /
COPY nginx-conf/sites-available/default /etc/nginx/sites-available/default
COPY php-conf/fpm/php.ini /etc/php/7.1/fpm/php.ini
#
RUN dos2unix ./entrypoint.sh
#
VOLUME ["/shared/", "/etc/nginx/", "/etc/php/7.1/fpm", "/usr/share/nginx/html"]
#
EXPOSE 80 443 9000
#
ENTRYPOINT ["./entrypoint.sh"]
