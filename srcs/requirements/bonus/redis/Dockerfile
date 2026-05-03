FROM debian:12

RUN apt update && apt install -y redis-server

COPY ./conf/redis.conf /etc/redis/redis.conf

COPY ./tools/setup.sh /usr/local/bin/setup.sh

RUN chmod +x /usr/local/bin/setup.sh

ENTRYPOINT ["/usr/local/bin/setup.sh"]