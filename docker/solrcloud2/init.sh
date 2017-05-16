docker build  -t mysolr2 solr/


#/root/solr/solr-5.4.1/server/scripts/cloud-scripts/zkcli.sh -zkhost 10.24.48.71:2181  -cmd makepath /solr_cluster2
cd   /root/solr/solr-5.4.1/
./server/scripts/cloud-scripts/zkcli.sh -zkhost 127.0.0.1:2181  -cmd makepath /solr_cluster2


./server/scripts/cloud-scripts/zkcli.sh  -zkhost 127.0.0.1:2181/solr_cluster2  -cmd  upconfig  -confname mytest  -confdir server/solr/configsets/basic_configs/conf
