#!/bin/bash

sed -i 's/bind 127.0.0.1/bind 0.0.0.0/g' /etc/redis/redis.conf
cat << EOF >> /etc/redis/redis.conf
maxmemory 256mb
maxmemory-policy allkeys-lfu
EOF

exec redis-server /etc/redis/redis.conf --daemonize no --protected-mode no --requirepass "$WP_REDIS_PASSWORD"