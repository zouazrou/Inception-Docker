FROM debian:12

COPY ./tools/setup.sh /tmp/setup.sh

RUN /tmp/setup.sh

COPY ./www.conf /etc/php/8.2/fpm/pool.d/www.conf 

CMD ["php-fpm8.2", "-F"]