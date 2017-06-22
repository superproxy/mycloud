cd  hbase

docker build  -t pinpoint_hbase .  

cd  ..
cd  ui
docker build  -t pinpoint_ui  .

cd  ..
cd  collector
docker build  -t pinpoint_collector .
cd  ..
cd agent 
docker build  -t pinpoint_agent .
cd  ..
cd agent2 
docker build  -t pinpoint_agent2 .
