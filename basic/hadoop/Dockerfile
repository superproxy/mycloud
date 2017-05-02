FROM mywildfly

WORKDIR /opt
RUN  wget http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-2.7.1/hadoop-2.7.1.tar.gz
RUN tar -xvzf  hadoop-2.7.1.tar.gz


RUN yum install -y  which
RUN yum install -y  openssh-clients.x86_64
WORKDIR /opt/hadoop-2.7.1

ADD  ./example.sh  ./example.sh
#CMD ["/bin/bash", "-c", "sbin/start-dfs.sh &&  sbin/start-yarn.sh"]
