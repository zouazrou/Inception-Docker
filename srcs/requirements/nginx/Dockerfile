FROM debian:12

RUN apt update -y && apt install nginx openssl -y 

COPY ./conf/default /etc/nginx/sites-available/default

COPY ./tools/setup.sh /usr/local/bin/setup.sh

RUN chmod +x /usr/local/bin/setup.sh

ENTRYPOINT ["/usr/local/bin/setup.sh"]