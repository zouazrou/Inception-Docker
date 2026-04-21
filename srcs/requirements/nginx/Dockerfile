FROM debian:12

COPY ./tools/setup.sh /tmp/setup.sh

RUN /tmp/setup.sh

COPY ./conf/default /etc/nginx/sites-available/default

CMD ["nginx", "-g", "daemon off;"]