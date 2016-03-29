FROM mybase
ENV http_proxy "http://10.24.48.104:8888" 
ENV https_proxy="http://10.24.48.104:8888" 
RUN yum install -y dnsmasq 
RUN yum install -y haproxy 

#dnsmasq config
RUN echo -e "listen-address=127.0.0.1\nconf-dir=/etc/dnsmasq.d" > /etc/dnsmasq.conf
# slove "dnsmasq: setting capabilities failed: Operation not permitted" # refs:https://github.com/nicolasff/docker-cassandra/issues/8 RUN echo "user=root" >> /etc/dnsmasq.conf
RUN echo "user=root" >> /etc/dnsmasq.conf

#confd
RUN   mkdir  -p /opt/confd
COPY  ./confd/confd-0.1 /opt/confd/confd
#ADD   confd/confd-0.1 /opt/confd/confd
#ADD   confd/confd /opt/confd/confd
COPY  ./confd/templates /etc/confd/templates
COPY  ./confd/conf.d  /etc/confd/conf.d


#haproxy conf
ADD haproxy.cfg  /etc/haproxy/haproxy.cfg
ADD haproxy.sh  /
EXPOSE 22
EXPOSE 80 443
EXPOSE 81 82 88

#CMD ["haproxy", "-d", "-f","/etc/haproxy/haproxy.cfg"] 



ENV http_proxy "" 
ENV https_proxy="" 

ENTRYPOINT /haproxy.sh
