FROM debian:12

COPY ./tools/setup.sh /tmp/setup.sh

COPY ./default /etc/nginx/sites-available/default

RUN /tmp/setup.sh

CMD ["nginx", "-g", "daemon off;"]