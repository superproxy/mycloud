FROM mybase

#RUN  yum install -y update 
#RUN yum install -y deltarpm
#RUN  yum install -y  jemalloc
RUN  yum install -y  varnish



ENV http_proxy=""
ENV https_proxy=""
#CMD ["bash", "-c", "varnishd -f /etc/varnish/default.vcl -s malloc,100M -T 0.0.0.0:2000 -a 0.0.0.0:80"] 
EXPOSE 80
EXPOSE 2000
#CMD ["bash", "-c", "/usr/sbin/sshd -D && varnishd '-f /etc/varnish/default.vcl -s malloc,100M -T 0.0.0.0:2000 -a 0.0.0.0:80'"] 
# error
#CMD ["bash", "-c", "/usr/sbin/sshd -D & varnishd -f /etc/varnish/default.vcl"] 

#error
#CMD ["bash", "-c", "varnishd -f /etc/varnish/default.vcl"] 
#ENTRYPOINT  /varnish.sh
ADD  ./varnish.sh  /varnish.sh
WORKDIR /
#CMD ["varnish.sh"]

ADD  ./default.vcl  /etc/varnish/default.vcl
#VOLUME ./varnish /etc/varnish/
# -F Run in foreground
CMD ["varnishd", "-F", "-f", "/etc/varnish/default.vcl", "-s", "malloc,100m", "-T", "127.0.0.1:2000", "-a","0.0.0.0:80"]
