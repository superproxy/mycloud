FROM mybase
RUN  yum install -y nginx
ADD  ./nginx.conf  /etc/nginx/nginx.conf
EXPOSE 80

CMD ["/usr/sbin/nginx","-g", "daemon off;"]
#CMD ["/bin/bash","-c","/usr/sbin/sshd -D && /usr/sbin/nginx -c /etc/nginx/nginx.conf &"]
#CMD ["/bin/bash","-c","/usr/sbin/nginx -c /etc/nginx/nginx.conf"]


