FROM mywildfly
ENV http_proxy "http://10.24.48.71:8888" 
ENV https_proxy="http://10.24.48.71:8888" 


WORKDIR /
RUN wget http://mirror.bit.edu.cn/apache/lucene/solr/6.0.1/solr-6.0.1.tgz
RUN tar -zxvf solr-6.0.1.tgz 
RUN cd solr-6.0.1


EXPOSE 8983


WORKDIR  /solr-6.0.1
VOLUME  /opt/solr 


ENV SOLR_VERSION 6.0.1

#CMD ["bash","-c", "bin/solr start -f -p 8983  -z 10.24.48.71:2181/solr_cluster2"]
CMD ["bash","-c", "bin/solr start -f -p 8983  -z myzookeeper:2181/solr_cluster2"]




