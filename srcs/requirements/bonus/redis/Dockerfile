FROM debian:12

RUN apt update && apt install -y redis-server

COPY ./tools/setup.sh /usr/local/bin/setup.sh

RUN chmod +x /usr/local/bin/setup.sh && /usr/local/bin/setup.sh

CMD ["redis-server", "/etc/redis/redis.conf", "--protected-mode", "no"]