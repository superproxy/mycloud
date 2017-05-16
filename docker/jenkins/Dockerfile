FROM  myjetty


WORKDIR /opt/jetty/webapps
RUN wget  http://mirrors.jenkins.io/war-stable/latest/jenkins.war 

ADD ./jenkins.xml  ./jenkins.xml

WORKDIR /opt/jetty

EXPOSE 8080
CMD ["bin/jetty.sh","run"]
