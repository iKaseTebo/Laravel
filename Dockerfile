FROM ikasetebo/php7.2:v0.18

WORKDIR /
COPY ./entrypoint/entrypoint.sh /entrypoint.sh

RUN apt-get update && apt-get install -y build-essential \
    && dos2unix ./entrypoint.sh


COPY ./nginx-conf/sites-enabled/default /etc/nginx/sites-enabled/default
COPY ./nginx-conf/nginx.conf /etc/nginx/nginx.conf
COPY ./app/ /usr/share/nginx/html/

WORKDIR /etc/php/7.2/fpm
COPY php-conf/fpm/php.ini php.ini

EXPOSE 80 443

VOLUME ["/shared/","/usr/share/nginx/html"]

	#chgrp -R www-data storage bootstrap/cache
    #chgrp -R www-data bootstrap/cache
    #chmod -R ug+rwx storage
    #chmod -R ug+rwx bootstrap/cache

WORKDIR /
ENTRYPOINT ["./entrypoint.sh"]

