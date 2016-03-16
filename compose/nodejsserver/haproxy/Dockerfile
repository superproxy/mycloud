FROM mybase
#ENV http_proxy "http://10.24.48.104:8888" 
#ENV https_proxy="http://10.24.48.104:8888" 
RUN http_proxy="http://10.24.48.104:8888" && https_proxy="http://10.24.48.104:8888" && export http_proxy  &&     export https_proxy  && \
yum install -y dnsmasq 
#RUN yum install -y dnsmasq 
RUN echo -e "listen-address=127.0.0.1\nconf-dir=/etc/dnsmasq.d" > /etc/dnsmasq.conf
# slove "dnsmasq: setting capabilities failed: Operation not permitted" # refs:https://github.com/nicolasff/docker-cassandra/issues/8 RUN echo "user=root" >> /etc/dnsmasq.conf
RUN echo "user=root" >> /etc/dnsmasq.conf
RUN http_proxy="http://10.24.48.104:8888" && https_proxy="http://10.24.48.104:8888" && export http_proxy  &&     export https_proxy  && \
yum install -y haproxy 
#RUN yum install -y haproxy 

EXPOSE 80 443
EXPOSE 81 82 88

ADD haproxy.cfg  /etc/haproxy/haproxy.cfg
#CMD ["haproxy", "-d", "-f","/etc/haproxy/haproxy.cfg"] 

ADD haproxy.sh  /

ENTRYPOINT /haproxy.sh
