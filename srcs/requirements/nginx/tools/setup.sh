#!/bin/bash

mkdir -p /etc/nginx/ssl/

# ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/

if [ ! -f /etc/nginx/ssl/inception.crt ]; then
    mkdir -p /etc/nginx/ssl/
    openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -keyout /etc/nginx/ssl/inception.key \
        -out /etc/nginx/ssl/inception.crt \
        -subj "/CN=${DOMAIN_NAME}/"
fi

exec nginx -g "daemon off;"