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
RUN  wget http://mirrors.cnnic.cn/apache/tomcat/tomcat-7/v7.0.62/bin/apache-tomcat-7.0.62.tar.gz
RUN tar -xvzf apache-tomcat-7.0.62.tar.gz

EXPOSE 8080
CMD /opt/apache-tomcat-7.0.62/bin/catalina.sh run


