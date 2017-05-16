bin/storm  dev-zookeeper & 
sleep 10s 
bin/storm nimbus &
sleep 10s 
bin/storm supervisor &
sleep 10s 
bin/storm ui
#bin/storm jar ./test.jar   storm.test.WordCountTopology mycount
