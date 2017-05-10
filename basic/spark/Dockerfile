FROM  myhadoop2

WORKDIR /opt
RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/spark/spark-2.1.1/spark-2.1.1-bin-hadoop2.7.tgz 
RUN tar -xvzf spark-2.1.1-bin-hadoop2.7.tgz

WORKDIR /opt/spark-2.1.1-bin-hadoop2.7


ENV HADOOP_HOME=/opt/hadoop-2.7.1


ADD  ./core-site.xml  /$HADOOP_HOME/etc/hadoop/core-site.xml
#ADD  ./start_hadoop.sh  ./start_hadoop.sh
ADD  ./run_single_process.sh ./run_single_process.sh
ADD  ./run-master-slave.sh ./run-master-slave.sh


#CMD ["/bin/bash", "-c", "/usr/sbin/sshd -D && sbin/start-dfs.sh &&  sbin/start-yarn.sh"]
