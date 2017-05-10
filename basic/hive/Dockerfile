FROM  myhadoop2

WORKDIR /opt
RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/hive/stable-2/apache-hive-2.1.1-bin.tar.gz
RUN tar -xvzf apache-hive-2.1.1-bin.tar.gz 

WORKDIR /opt/apache-hive-2.1.1-bin


#RUN export HADOOP_HOME=/opt/hadoop-2.7.1
ENV HADOOP_HOME=/opt/hadoop-2.7.1
ENV HIVE_HOME=/opt/apache-hive-2.1.1-bin


ADD  ./core-site.xml  /$HADOOP_HOME/etc/hadoop/core-site.xml
ADD  ./start_hadoop.sh  ./start_hadoop.sh
ADD  ./init_hive.sh  ./init_hive.sh
ADD  ./create.sql  ./create.sql
ADD  ./m100k_data.sh ./m100k_data.sh
ADD  ./m100k_sql.sh ./m100k_sql.sh

ADD  ./start_hive_server.sh ./start_hive_server.sh


#CMD ["/bin/bash", "-c", "/usr/sbin/sshd -D && sbin/start-dfs.sh &&  sbin/start-yarn.sh"]
