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

ADD test.war /opt/apache-tomcat-8.5.14/webapps/test.war
