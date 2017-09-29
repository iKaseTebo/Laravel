FROM ikasetebo/nginx-php7:v0.08

WORKDIR /
COPY ./entrypoint/entrypoint.sh /

RUN apt-get update && apt-get install -y nodejs \
    -y nodejs-legacy \
    -y build-essential \
    -y npm \
    && dos2unix ./entrypoint.sh


COPY ./nginx-conf/conf/conf.d/ /etc/nginx/conf.d/
COPY ./nginx-conf/sites-available/default /etc/nginx/sites-available/default
COPY ./app/ /usr/share/nginx/html/

WORKDIR /etc/php/7.0/fpm
COPY php-conf/fpm/php.ini php.ini

EXPOSE 80 443

VOLUME ["/shared/","/usr/share/nginx/html"]

chgrp -R www-data storage bootstrap/cache
    chgrp -R www-data bootstrap/cache
    chmod -R ug+rwx storage
    chmod -R ug+rwx bootstrap/cache

WORKDIR /
ENTRYPOINT ["./entrypoint.sh"]

