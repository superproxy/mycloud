$HIVE_HOME/bin/hive -f create.sql  

echo $HIVE_HOME/bin/hive -e 'LOAD DATA LOCAL INPATH 'ml-100k/u.data' OVERWRITE INTO TABLE u_data;'
$HIVE_HOME/bin/hive
$HIVE_HOME/bin/hive -S -e 'SELECT COUNT(*) FROM u_data';
