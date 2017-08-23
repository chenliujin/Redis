#!/bin/bash

mkdir -p /var/log/redis/
touch /var/log/redis/redis.log
chmod a+w /var/log/redis/redis.log

docker run -d \
	--restart=always \
	-v /data/redis:/data \
	-v /var/log/redis:/var/log/redis \
	-v /etc/redis.conf:/etc/redis.conf \
	-p 6679:6379 \
	--name redis \
	redis:3.2.8 \
	redis-server /etc/redis.conf
