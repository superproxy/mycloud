FROM  mysdk

WORKDIR /opt
RUN wget https://mirrors.tuna.tsinghua.edu.cn/apache/hbase/stable/hbase-1.2.5-bin.tar.gz
RUN tar -xvzf  hbase-1.2.5-bin.tar.gz

WORKDIR /opt/hbase-1.2.5

ADD ./start_hbase_server.sh  /opt/hbase-1.2.5/start_hbase_server.sh 
ADD ./start_hbase_shell.sh  /opt/hbase-1.2.5/start_hbase_shell.sh 

# start server
#CMD ["bin/start-hbase.sh","foreground_start","master"]
ENTRYPOINT ["bin/hbase-daemon.sh"]
CMD ["foreground_start","master"]
