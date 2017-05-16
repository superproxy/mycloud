# https://github.com/dockerfile/elasticsearch
FROM   mysdk

#ENV ES_PKG_NAME elasticsearch-1.5.0
ENV ES_PKG_NAME elasticsearch-5.4.0
#https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.zip

# Install Elasticsearch.
RUN \
  cd / && \
  wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.4.0.tar.gz && \
 #wget https://artifacts.elastic.co/downloads/elasticsearch/$ES_PKG_NAME.tar.gz && \
  tar xvzf $ES_PKG_NAME.tar.gz && \
  rm -f $ES_PKG_NAME.tar.gz && \
  mv /$ES_PKG_NAME /elasticsearch


# Mount elasticsearch.yml config
ADD config/elasticsearch.yml /elasticsearch/config/elasticsearch.yml
ADD config/jvm.options /elasticsearch/config/jvm.options

#
#java.lang.RuntimeException: can not run elasticsearch as root
RUN \
groupadd esearch  && \
# group -p
useradd esearch -g esearch -p esearch && \
chown -R esearch:esearch  /elasticsearch && \
# easerch data
mkdir /data   && \
chown -R esearch:esearch  /data

USER esearch

#RUN \
#cd /elasticsearch/bin && \
#./plugin -install mobz/elasticsearch-head



# Define mountable directories.
VOLUME ["/data"]


# Define working directory.
WORKDIR /elasticsearch

# Expose ports.
#   - 9200: HTTP
#   - 9300: transport
EXPOSE 9200
EXPOSE 9300

# Define default command.
CMD ["bin/elasticsearch"]
