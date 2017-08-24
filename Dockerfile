FROM redis:4.0.1

MAINTAINER chenliujin <liujin.chen@qq.com>

RUN mkdir -p /var/redis/6379 && \
    chown -R redis:redis /var/redis/6379

COPY ./etc/redis /etc/redis

VOLUME [ "/etc/redis", "/var/redis/6379" ]

CMD ["redis-server", "/etc/redis/6379.conf"]
