FROM  mysdk
# dev jdk
#RUN yum install -y java-1.7.0-openjdk-devel.x86_64
#jre
#RUN  yum install -y java-1.7.0-openjdk.x86_64
#RUN  yum install -y tomcat6.x86_64

#ENV JAVA_HOME /usr/local/java/jdk1.7.0_67
#ENV JAVA_HOME /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.79-2.5.5.2.el7_1.x86_64
#ENV JRE_HOME $JAVA_HOME/jre
#ENV CLASSPATH .:$JAVA_HOME/lib:$JRE_HOME/lib
#ENV PATH $PATH:$JAVA_HOME/bin

WORKDIR /opt

RUN wget http://central.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.4.5.v20170502/jetty-distribution-9.4.5.v20170502.zip
RUN unzip jetty-distribution-9.4.5.v20170502.zip

RUN yum install  -y which


RUN  mv /opt/jetty-distribution-9.4.5.v20170502 /opt/jetty

WORKDIR /opt/jetty
EXPOSE 8080
ENV JETTY_HOME /opt/jetty

# run is foregroud  start is backgroud
CMD ["bin/jetty.sh", "run"]


