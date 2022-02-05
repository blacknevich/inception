FROM debian:buster
ARG WORDPRESS_DB_NAME
ARG WORDPRESS_DB_USER
ARG WORDPRESS_DB_PASSWORD
ARG WORDPRESS_DB_HOST
RUN apt-get update \
        && apt-get -y install php7.3 php-mysqli php-fpm mariadb-client curl vim

COPY ./fpm.conf /etc/php/7.3/fpm/pool.d/www.conf

ADD https://ru.wordpress.org/wordpress-5.7.2-ru_RU.tar.gz /var/www/

RUN cd /var/www && tar -xzvf wordpress-5.7.2-ru_RU.tar.gz \
        && rm -f /var/www/wordpress-5.7.2-ru_RU.tar.gz \
        && rm -f /var/www/wordpress/wp-config-sample.php \
        && chown -R www-data:www-data /var/www/wordpress \
        && chmod -R 775 /var/www/wordpress \
	&& chmod -R 600 /etc/ssl/*
    
COPY ./wp-config.php ./var/www/wordpress/
COPY ./wp-edit.sh ./

EXPOSE 9000

RUN mkdir ./run/php/
RUN bash wp-edit.sh

CMD ./usr/sbin/php-fpm7.3 -F

