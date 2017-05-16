FROM mybase
RUN http_proxy="http://10.24.48.104:8888" && https_proxy="http://10.24.48.104:8888" && export http_proxy  && export https_proxy  && \
yum install -y nginx


ADD  ./nginx.conf  /etc/nginx/nginx.conf
EXPOSE 80
#EXPOSE 80
CMD ["/usr/sbin/nginx","-g", "daemon off;"]
#CMD ["/bin/bash","-c","/usr/sbin/sshd -D && /usr/sbin/nginx -c /etc/nginx/nginx.conf &"]
#CMD ["/bin/bash","-c","/usr/sbin/nginx -c /etc/nginx/nginx.conf"]


