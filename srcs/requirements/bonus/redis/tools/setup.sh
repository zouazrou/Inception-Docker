#!/bin/bash
sed 's/bind 127.0.0.1 -::1/bind 0.0.0.0/' /etc/redis/redis.conf -i
sed 's/daemonize yes/daemonize no/' /etc/redis/redis.conf -i

# automatically removes the least recently used keys (LRU)
# when the maxmemory limit is reached
echo "maxmemory 256mb" >> /etc/redis/redis.conf
echo "maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf