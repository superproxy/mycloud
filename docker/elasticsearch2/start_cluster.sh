 docker run -d -p 9200:9200 -p 9300:9300 -v `pwd`/c1_node1:/data myelasticsearch /elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch.yml
 docker run -d -p 8200:9200 -p 8300:9300 -v `pwd`/c1_node2:/data myelasticsearch /elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch.yml
 docker run -d -p 7200:9200 -p 7300:9300 -v `pwd`/c1_node3:/data myelasticsearch /elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch.yml

 #docker run -d -p 7200:9200 -p 6300:9300 -v `pwd`/cluster2_data1:/data myelasticsearch /elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch.yml
 #docker run -d -p 6200:9200 -p 5300:9300 -v `pwd`/cluster2_data2:/data myelasticsearch /elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch.yml