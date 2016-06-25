FROM mywildfly



WORKDIR /opt
RUN  wget  -O storm-1.0.1.tar.gz https://codeload.github.com/apache/storm/tar.gz/v1.0.1
RUN tar -xvzf storm-1.0.1.tar.gz 
RUN  mv storm-1.0.1 storm 

ENV STORM_HOME /opt/storm
RUN groupadd storm; useradd --gid storm --home-dir /home/storm --create-home --shell /bin/bash storm; chown -R storm:storm $STORM_HOME; mkdir /var/log/storm ; chown -R storm:storm /var/log/storm

RUN ln -s $STORM_HOME/bin/storm /usr/bin/storm

