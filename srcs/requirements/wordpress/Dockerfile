FROM debian:12

COPY ./tools/setup.sh /tmp/setup.sh

RUN /tmp/setup.sh

COPY ./www.conf /etc/php/8.2/fpm/pool.d/www.conf 

COPY ./tools/wp-cli.sh .

RUN chmod +x wp-cli.sh

CMD ["./wp-cli.sh"]