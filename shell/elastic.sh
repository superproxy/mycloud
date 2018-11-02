#limit
ulimit -n 65535
sysctl -w vm.max_map_count=655360


#root
useradd yxz
chown -R yxz /opt/elasticsearch
su yxz

#
vi config/elasticsearch.yml 
bin/elasticsearch 
