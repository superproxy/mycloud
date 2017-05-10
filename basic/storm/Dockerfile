FROM mysdk

WORKDIR /opt
RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/storm/apache-storm-1.1.0/apache-storm-1.1.0.tar.gz
RUN tar -xvzf apache-storm-1.1.0.tar.gz  

WORKDIR /opt/apache-storm-1.1.0



# standalone java app

ADD   ./client1/storm-test-helloworld-1.0-SNAPSHOT-jar-with-dependencies.jar  ./client1/storm-test-helloworld-1.0-SNAPSHOT-jar-with-dependencies.jar  
ADD  ./client1/test.sh  ./client1/test.sh


# one machine cluster

ADD  ./storm.yaml  /opt/apache-storm-1.1.0/conf/storm.yaml
ADD  ./init_storm.sh  ./init_storm.sh
ADD  ./client2/test.jar  ./client2/test.jar
ADD  ./client2/test.sh  ./client2/test.sh

#CMD ["/bin/bash", "-c", "/usr/sbin/sshd -D && sbin/start-dfs.sh &&  sbin/start-yarn.sh"]
