#docker stop pinpoint_hbase 
#docker rm  pinpoint_hbase 
#docker run --name pinpoint_hbase -d pinpoint_hbase 
#sleep 1000
docker stop pinpoint_ui
docker stop pinpoint_collector
docker stop pinpoint_agent
docker rm pinpoint_ui
docker rm pinpoint_collector
docker rm pinpoint_agent

docker run --link pinpoint_hbase --name pinpoint_ui -d  pinpoint_ui
docker run --link pinpoint_hbase --name  pinpoint_collector -d  pinpoint_collector
docker run --link pinpoint_collector --name  pinpoint_agent -d  pinpoint_agent



docker run --link pinpoint_collector  -e "CATALINA_OPTS= -javaagent:/opt/pinpoint-agent-1.6.2/pinpoint-bootstrap-1.6.2.jar -Dpinpoint.agentId=agent_test1 -Dpinpoint.applicationName=app_test2"  -d pinpoint_agent  
docker run --link pinpoint_collector  -e "CATALINA_OPTS= -javaagent:/opt/pinpoint-agent-1.6.2/pinpoint-bootstrap-1.6.2.jar -Dpinpoint.agentId=agent_test1 -Dpinpoint.applicationName=app_test2"  -d pinpoint_agent2  
