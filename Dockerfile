FROM redis:4.0.1

MAINTAINER chenliujin <liujin.chen@qq.com>

RUN mkdir /var/lib/redis && \
    chown redis:redis /var/lib/redis

COPY ./etc/redis/redis.conf /etc/redis/redis.conf

VOLUME [ "/etc/redis", "/var/lib/redis" ]

CMD [ "redis-server", "/etc/redis/redis.conf" ]
