FROM  myjetty


WORKDIR /opt/jetty/webapps
RUN wget  http://mirrors.jenkins.io/war-stable/latest/jenkins.war 

ADD ./jenkins.xml  ./jenkins.xml

VOLUME /opt/jenkins

ENV  JENKINS_HOME  /opt/jenkins
WORKDIR /opt/jetty

EXPOSE 8080
#CMD ["bin/jetty.sh","run"]
WORKDIR /opt/jetty/webapps
CMD ["java", "-jar", "jenkins.war"]
