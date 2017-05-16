docker rm  myelasticsearch
docker rm  myredis
docker rm  mykibana
docker rm  mylogstash


docker run -v /work:/work --name myelasticsearch   myelasticsearch
docker run -v /work:/work --name myredis myredis
docker run -v /work:/work --name mykibana  --link myelasticsearch -e ELASTICSEARCH_URL=http://myelasticsearch:9200 -p 5601:5601 -d mykibana
docker run -v /work:/work --name mylogstash --link myredis  --link myelasticsearch  mylogstash
