#centos 7 
FROM centos:latest 
#FROM  ubuntu
#MAINTAINER yxz "sharpcoder@qq.com"

#ENV  http_proxy="http://10.24.19.97:8888"
#ENV  https_proxy="http://10.24.19.97:8888"

RUN alias md=mkdir 

#tools
RUN yum install -y epel-release


RUN yum install -y sudo 

RUN yum install -y openssh-server 
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
RUN sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config
RUN  ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key  
RUN  ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key  
RUN  ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key  
RUN  ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key  
RUN  mkdir /var/run/sshd  

#tools
RUN yum install -y  lrzsz 
RUN yum install -y  less
RUN yum install -y  zip unzip
RUN yum install -y  net-tools
RUN yum install -y  nc
RUN yum install -y  bind-utils
RUN yum install -y  ntpdate
RUN yum install -y  which
RUN yum install -y  openssh-clients.x86_64

   
ADD bash_profile /root/.bash_profile
RUN echo 'root:root1234' | chpasswd
EXPOSE 22  
CMD ["/usr/sbin/sshd", "-D"]  

