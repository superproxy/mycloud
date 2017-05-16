FROM mybase
ENV http_proxy="http://10.24.48.31:8888" 
ENV https_proxy="http://10.24.48.31:8888"
RUN yum install -y nginx


ADD  ./nginx.conf  /etc/nginx/nginx.conf
EXPOSE 80
#EXPOSE 80
CMD ["/usr/sbin/nginx","-g", "daemon off;"]

ENV http_proxy="" 
ENV  https_proxy=""
#CMD ["/bin/bash","-c","/usr/sbin/sshd -D && /usr/sbin/nginx -c /etc/nginx/nginx.conf &"]
#CMD ["/bin/bash","-c","/usr/sbin/nginx -c /etc/nginx/nginx.conf"]


