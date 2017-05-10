FROM sdk

ARG MIRROR=http://mirror.bit.edu.cn
ARG VERSION=3.4.8


RUN wget  http://mirror.bit.edu.cn/apache/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz 
RUN mkdir -p /opt  
RUN tar -zxvf zookeeper-3.4.8.tar.gz -C /opt 
RUN     mv /opt/zookeeper-$VERSION /opt/zookeeper \
    && cp /opt/zookeeper/conf/zoo_sample.cfg /opt/zookeeper/conf/zoo.cfg \
    && mkdir -p /tmp/zookeeper


EXPOSE 2181 2888 3888

WORKDIR /opt/zookeeper 

#ENTRYPOINT ["bin/zkServer.sh"]
CMD ["bin/zkServer.sh", "start-foreground"]

