FROM mywildfly

WORKDIR /opt
RUN  wget http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz
RUN tar -xvzf  hadoop-2.7.1.tar.gz


RUN yum install -y  net-tools
RUN yum install -y  which
RUN yum install -y  openssh-clients.x86_64
WORKDIR /opt/hadoop-2.7.1


ADD ./etc/hadoop/core-site.xml  ./etc/hadoop/core-site.xml
ADD ./etc/hadoop/hdfs-site.xml  ./etc/hadoop/hdfs-site.xml
ADD ./etc/hadoop/mapred-site.xml  ./etc/hadoop/mapred-site.xml


RUN export JAVA_HOME=/etc/alternatives/java_sdk/
ADD ./etc/hadoop/hadoop-env.sh   ./etc/hadoop/hadoop-env.sh

# login ssh localhost without password
RUN ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa
RUN cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
RUN  chmod 0600 ~/.ssh/authorized_keys


ADD  ./example.sh  ./example.sh
ADD  ./job.sh  ./job.sh

CMD ["/bin/bash", "-c", "/usr/sbin/sshd -D && sbin/start-dfs.sh &&  sbin/start-yarn.sh"]
