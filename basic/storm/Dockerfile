FROM mywildfly



WORKDIR /opt
RUN  wget  -O storm-1.0.1.tar.gz http://mirrors.hust.edu.cn/apache/storm/apache-storm-1.0.1/apache-storm-1.0.1.tar.gz
RUN tar -xvzf storm-1.0.1.tar.gz 
RUN  mv apache-storm-1.0.1 storm

ENV STORM_HOME /opt/storm
RUN groupadd storm; useradd --gid storm --home-dir /home/storm --create-home --shell /bin/bash storm; chown -R storm:storm $STORM_HOME; mkdir /var/log/storm ; chown -R storm:storm /var/log/storm

RUN ln -s $STORM_HOME/bin/storm /usr/bin/storm

