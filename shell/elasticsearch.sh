mkdir -p /opt/test/elasticsearch
cd /opt/test/elasticsearch

export ES_PKG_NAME=elasticsearch-5.4.0
#https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.zip
 
 wget https://artifacts.elastic.co/downloads/elasticsearch/$ES_PKG_NAME.tar.gz && \
 tar xvzf $ES_PKG_NAME.tar.gz && \
 rm -f $ES_PKG_NAME.tar.gz && \
 mv ./$ES_PKG_NAME ./elasticsearch

 
groupadd esearch  && \
# group -p
useradd esearch -g esearch -p esearch && \
chown -R esearch:esearch  ./elasticsearch && \
# easerch data
mkdir ./data   && \
chown -R esearch:esearch  ./data
su esearch

cd elasticsearch
nohup bin/elasticsearch &