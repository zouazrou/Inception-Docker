FROM debian:12

RUN apt update && apt install -y \
    php-fpm \
    php-mysqli \
    php-redis \
    mariadb-client \
    curl

RUN mkdir -p /run/php

COPY conf/www.conf /etc/php/8.2/fpm/pool.d/www.conf 

COPY ./tools/wp-cli.sh .

RUN chmod +x wp-cli.sh

CMD ["./wp-cli.sh"]