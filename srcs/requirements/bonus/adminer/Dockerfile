FROM debian:12

RUN apt update && apt install -y \
    wget php php-mysqli

COPY ./tools/setup.sh ./

RUN chmod +x ./setup.sh && ./setup.sh

CMD [ "php", "-S", "0.0.0.0:8080", "-t", "/var/www/html" ]