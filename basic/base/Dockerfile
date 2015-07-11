#centos 7 
FROM centos:latest 
#FROM  ubuntu
#MAINTAINER yxz "sharpcoder@qq.com"


RUN yum install -y wget
RUN yum install -y wget

RUN yum install -y epel-release


RUN yum install -y openssh-server   
#RUN sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config  

RUN yum install -y sudo 

RUN ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key  
RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key  
   
RUN mkdir /var/run/sshd  
EXPOSE 22  
CMD ["/usr/sbin/sshd", "-D"]  

