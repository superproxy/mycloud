#bin/hdfs namenode -format
#sbin/start-dfs.sh


bin/hdfs dfs -mkdir /user
bin/hdfs dfs -mkdir /user/root
bin/hdfs dfs -put etc/hadoop input


#job
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar grep input output3 'dfs[a-z.]+'
bin/hdfs dfs -cat output3/*
