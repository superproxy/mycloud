FROM mytomcat


#RUN wget https://github.com/naver/pinpoint/releases/download/1.6.2/pinpoint-collector-1.6.2.war
#RUN  mv pinpont-collector-1.6.2.war pinpoint-collector.war 


ADD ./pinpoint-collector-1.6.2.war ./pinpoint-collector.war

ADD  ./hbase.properties     ./hbase.properties 
ADD  ./pinpoint-collector.properties  ./pinpoint-collector.properties 


RUN unzip -o ./pinpoint-collector.war -d  /opt/apache-tomcat-8.5.14/webapps/ROOT
RUN mv ./hbase.properties  /opt/apache-tomcat-8.5.14/webapps/ROOT/WEB-INF/classes
RUN mv ./pinpoint-collector.properties  /opt/apache-tomcat-8.5.14/webapps/ROOT/WEB-INF/classes

