FROM mybase
RUN http_proxy="http://10.24.48.104:8888" && https_proxy="http://10.24.48.104:8888" && export http_proxy  && export https_proxy  && \
yum install -y haproxy 

EXPOSE 80
CMD ["haproxy", "-d", "-f","/etc/haproxy/haproxy.cfg"] 
