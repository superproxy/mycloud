FROM mysdk


WORKDIR /opt
RUN  wget  http://download.jboss.org/wildfly/8.2.0.Final/wildfly-8.2.0.Final.tar.gz
RUN tar -xvzf wildfly-8.2.0.Final.tar.gz 

#web
EXPOSE 8080
#admin
EXPOSE 9990
#CMD /opt/wildfly-8.2.0.Final/bin/standalone.sh -b 0.0.0.0
CMD ["bash", "-c","/usr/sbin/sshd -D & /opt/wildfly-8.2.0.Final/bin/standalone.sh -b 0.0.0.0"]

