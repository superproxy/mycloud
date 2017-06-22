FROM mytomcat


#RUN wget https://github.com/naver/pinpoint/releases/download/1.6.2/pinpoint-web-1.6.2.war
#RUN  mv pinpont-web-1.6.2.war pinpoint-web.war 


ADD ./pinpoint-web-1.6.2.war ./pinpoint-web.war

ADD  ./hbase.properties     ./hbase.properties 
ADD  ./pinpoint-web.properties  ./pinpoint-web.properties 


RUN unzip -o ./pinpoint-web.war -d  /opt/apache-tomcat-8.5.14/webapps/ROOT
RUN mv ./hbase.properties  /opt/apache-tomcat-8.5.14/webapps/ROOT/WEB-INF/classes
RUN mv ./pinpoint-web.properties  /opt/apache-tomcat-8.5.14/webapps/ROOT/WEB-INF/classes

