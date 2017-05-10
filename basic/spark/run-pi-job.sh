./bin/spark-submit \
  --class org.apache.spark.examples.SparkPi \
  --master spark://`hostname`:7077 \
 /opt/spark-2.1.1-bin-hadoop2.7/examples/jars/spark-examples_2.11-2.1.1.jar

