FROM debian:12

RUN apt update -y && apt install -y nginx

RUN mkdir -p /var/www/html

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

COPY /tools/index.html /var/www/html/

CMD ["nginx", "-g", "daemon off;"]