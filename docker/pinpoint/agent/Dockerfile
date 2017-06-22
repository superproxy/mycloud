FROM mytomcat

ENV JAVA_OPTS "$JAVA_OPTS -Djava.net.preferIPv4Stack=true"
ENV JAVA_OPTS "$JAVA_OPTS -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=7007"
ENV JAVA_OPTS "$JAVA_OPTS \
-Dcom.sun.management.jmxremote.port=1099 \
-Dcom.sun.management.jmxremote.authenticate=false \
-Dcom.sun.management.jmxremote.ssl=false"


EXPOSE 7007 7007
EXPOSE 8080 8080
EXPOSE 1099 1099
#RUN wget https://github.com/naver/pinpoint/releases/download/1.6.2/pinpoint-agent-1.6.2.tar.gz
#RUN tar -zxvf  pinpoint-agent-1.6.2.tar.gz
#RUN mv pinpoint-agent-1.6.2 pinpoint-agent

ADD ./test.war /opt/apache-tomcat-8.5.14/webapps/test.war
RUN mkdir /opt/pinpoint-agent-1.6.2
#ADD pinpoint-agent-1.6.2.tar.gz  pinpoint-agent-1.6.2.war
#ADD ./pinpoint-agent-1.6.2.tar.gz  pinpoint-agent-1.6.2.tar.gz
#ADD ./pinpoint-agent-1.6.2.tar.gz  /opt/pinpoint-agent-1.6.2.tar.gz
ADD ./pinpoint-agent-1.6.2.tar.gz  /opt/pinpoint-agent-1.6.2
#RUN  tar -zxvf pinpoint-agent-1.6.2.tar.gz 
#RUN  cd /opt/pinpoint-agent-1.6.2 && tar -zxvf pinpoint-agent-1.6.2.tar.gz 
#ADD ./pinpoint-agent-1.6.2.tar.gz  /opt/pinpoint-agent-1.6.2/pinpoint-agent-1.6.2.tar.gz
#RUN  mv /opt/pinpoint-agent-1.6.2/pinpoint-agent-1.6.2.tar.gz /opt/pinpoint-agent-1.6.2/pinpoint-agent-1.6.2
#RUN  cd /opt/pinpoint-agent-1.6.2 &&\
# tar -zxvf /opt/pinpoint-agent-1.6.2/pinpoint-agent-1.6.2.tar.gz 
ADD ./pinpoint.config /opt/pinpoint-agent-1.6.2/pinpoint.config

ENV  AGENT_PATH="/opt/pinpoint-agent-1.6.2"
ENV  VERSION="1.6.2"
ENV  AGENT_ID="agent_test1"
ENV  APPLICATION_NAME="app_test1"

ENV CATALINA_OPTS="$CATALINA_OPTS -javaagent:$AGENT_PATH/pinpoint-bootstrap-$VERSION.jar"
ENV CATALINA_OPTS="$CATALINA_OPTS -Dpinpoint.agentId=$AGENT_ID"
ENV CATALINA_OPTS="$CATALINA_OPTS -Dpinpoint.applicationName=$APPLICATION_NAME"
