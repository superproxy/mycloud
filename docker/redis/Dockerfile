FROM mybase

RUN yum install -y  redis
EXPOSE 6379

ENTRYPOINT ["/usr/bin/redis-server"]
