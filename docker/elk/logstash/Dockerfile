FROM  mysdk

WORKDIR /opt

RUN wget https://artifacts.elastic.co/downloads/logstash/logstash-5.4.0.tar.gz

RUN  tar -zxvf logstash-5.4.0.tar.gz
RUN  rm -f  logstash-5.4.0.tar.gz

WORKDIR /opt/logstash-5.4.0
ADD  ./redis2es.cfg  ./redis2es.cfg

CMD ["bin/logstash", "-f", "redis2es.cfg"]

