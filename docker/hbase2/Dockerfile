FROM  mysdk

WORKDIR /opt
RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/hbase/stable/hbase-1.2.5-bin.tar.gz
#RUN  wget http://ftp.cuhk.edu.hk/pub/packages/apache.org/hbase/stable/hbase-1.2.5-bin.tar.gz
RUN tar -xvzf  hbase-1.2.5-bin.tar.gz


WORKDIR /opt/hbase-1.2.5

ADD ./hbase-site.xml  /opt/hbase-1.2.5/conf/hbase-site.xml
ADD ./hbase-env.sh  /opt/hbase-1.2.5/conf/hbase-env.sh

ADD ./start_hbase_server.sh  /opt/hbase-1.2.5/start_hbase_server.sh 
ADD ./start_hbase_shell.sh  /opt/hbase-1.2.5/start_hbase_shell.sh 

RUN yum install -y  net-tools
RUN yum install -y  which
RUN yum install -y  openssh-clients.x86_64
#start server
CMD ["bin/start-hbase.sh","foreground_start"]
