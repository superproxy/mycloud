FROM  mysdk


#https://www.elastic.co/downloads/kibana
# 1. Open config/kibana.yml in an editor
#2. Set elasticsearch.url to point at your Elasticsearch instance
#3.  run
#4.  http://localhost:5601 


WORKDIR /opt

RUN wget https://artifacts.elastic.co/downloads/kibana/kibana-5.4.0-linux-x86_64.tar.gz

RUN tar -zxvf kibana-5.4.0-linux-x86_64.tar.gz

RUN mv kibana-5.4.0-linux-x86_64   kibana-5.4.0

WORKDIR  /opt/kibana-5.4.0

ADD ./kibana.yml   /opt/kibana-5.4.0/config/kibana.yml

EXPOSE 5601

CMD ["bin/kibana"]


