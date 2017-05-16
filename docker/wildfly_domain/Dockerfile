FROM mybase
# dev jdk
RUN yum install -y java-1.7.0-openjdk-devel.x86_64
#jre
#RUN  yum install -y java-1.7.0-openjdk.x86_64
#RUN  yum install -y tomcat6.x86_64

#ENV JAVA_HOME /usr/local/java/jdk1.7.0_67
ENV JAVA_HOME /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.79-2.5.5.2.el7_1.x86_64
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH .:$JAVA_HOME/lib:$JRE_HOME/lib
ENV PATH $PATH:$JAVA_HOME/bin

WORKDIR /opt
RUN  wget http://download.jboss.org/wildfly/8.2.0.Final/wildfly-8.2.0.Final.tar.gz
RUN tar -xvzf wildfly-8.2.0.Final.tar.gz 

EXPOSE 8080
#admin
EXPOSE 9990
CMD /opt/wildfly-8.2.0.Final/bin/standalone.sh -b 0.0.0.0


