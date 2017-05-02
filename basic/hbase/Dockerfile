FROM mywildfly

WORKDIR /opt
RUN  wget http://ftp.cuhk.edu.hk/pub/packages/apache.org/hbase/stable/hbase-1.2.5-bin.tar.gz
RUN tar -xvzf  hbase-1.2.5-bin.tar.gz


# ZooKeeper
#EXPOSE 2181

# HMaster
#EXPOSE 60000

# HMaster Web
#EXPOSE 60010

# RegionServer
#EXPOSE 60020

# RegionServer Web
#EXPOSE 60030
#ADD  ./start-hbase.sh  bin/start-hbase.sh
WORKDIR /opt/hbase-1.2.5
#CMD ["bin/start-hbase.sh","foreground_start","master"]
ENTRYPOINT ["bin/hbase-daemon.sh"]
CMD ["foreground_start","master"]
#CMD ["/bin/bash", "-c", "bin/start-hbase.sh;bin/hbase shell"]
#CMD ["/bin/bash", "-c", "bin/start-hbase.sh"]
