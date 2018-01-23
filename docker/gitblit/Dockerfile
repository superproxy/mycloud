FROM  myjetty

WORKDIR /opt
RUN wget http://dl.bintray.com/gitblit/releases/gitblit-1.8.0.tar.gz
RUN tar -zxvf gitblit-1.8.0.tar.gz 
WORKDIR /opt/gitblit-1.8.0
ADD ./defaults.properties  data/defaults.properties

VOLUME  /opt/gitblit /opt/gitblit
ENV baseFolder  /opt/gitblit
EXPOSE 8443
EXPOSE 9481
EXPOSE 29481

#CMD  [java -jar gitblit.jar --baseFolder data
CMD ["./gitblit.sh"]
