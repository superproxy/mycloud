FROM mybase
# dev jdk
#RUN http_proxy="http://10.24.48.104:8888" && https_proxy="http://10.24.48.104:8888" && export http_proxy && export https_proxy  &&\
#yum install -y deltarpm
RUN yum install -y deltarpm
#RUN http_proxy="http://10.24.48.104:8888" && https_proxy="http://10.24.48.104:8888" && export http_proxy && export https_proxy  &&\
#yum install -y java-1.7.0-openjdk-devel.x86_64
#yum install -y java-1.7.0-openjdk.x86_64
RUN yum install -y java-1.8.0-openjdk-devel.x86_64
#jre
#RUN  yum install -y java-1.7.0-openjdk.x86_64
#RUN  yum install -y tomcat6.x86_64

#ENV JAVA_HOME /usr/local/java/jdk1.7.0_67
ENV JAVA_HOME /etc/alternatives/java_sdk
#ENV JAVA_HOME /usr/lib/jvm/java-1.7.0-openjdk-1.7.0.79-2.5.5.2.el7_1.x86_64
ENV JRE_HOME $JAVA_HOME/jre
ENV CLASSPATH .:$JAVA_HOME/lib:$JRE_HOME/lib
ENV PATH $PATH:$JAVA_HOME/bin

WORKDIR /opt

RUN wget http://mirrors.tuna.tsinghua.edu.cn/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
RUN tar -xvzf  apache-maven-3.5.0-bin.tar.gz

ENV MAVEN_HOME /opt/apache-maven-3.5.0
ENV PATH=/opt/apache-maven-3.5.0/bin:$PATH

ADD ./settings.xml  /opt/apache-maven-3.5.0/conf/settings.xml


RUN yum install -y  net-tools
RUN yum install -y  zip unzip


#VOLUME /work /work


