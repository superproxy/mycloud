FROM mywildfly


ENV ZOOKEEPER_VERSION 3.5.0-alpha

RUN yum -y install tar wget 

RUN wget -q -O - http://apache.mirrors.pair.com/zookeeper/zookeeper-$ZOOKEEPER_VERSION/zookeeper-$ZOOKEEPER_VERSION.tar.gz | tar -xzf - -C /opt \
    && mv /opt/zookeeper-$ZOOKEEPER_VERSION /opt/zookeeper \
    && cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg \
    && mkdir -p /tmp/zookeeper

EXPOSE  2181 2888 388



WORKDIR /opt/zookeeper

#ENTRYPOINT ["/opt/zookeeper/bin/zkServer.sh"]

CMD ["/opt/zookeeper/bin/zkServer.sh","start-foreground"]



