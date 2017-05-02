#centos 7 
FROM centos:latest 
#FROM  ubuntu
#MAINTAINER yxz "sharpcoder@qq.com"

RUN http_proxy="http://10.24.50.179:8888" && \
https_proxy="http://10.24.50.179:8888" && \
export http_proxy  && \
export https_proxy  && \
yum install -y wget

#RUN yum install git
#RUN git config --global http.proxy http://10.24.50.179:8888
RUN alias md=mkdir

RUN http_proxy="http://10.24.50.179:8888" && https_proxy="http://10.24.50.179:8888" && export http_proxy  && export https_proxy  && \
yum install -y epel-release


RUN http_proxy="http://10.24.50.179:8888" && https_proxy="http://10.24.50.179:8888" && export http_proxy  && export https_proxy  && \
yum install -y epel-release

RUN http_proxy="http://10.24.50.179:8888" && https_proxy="http://10.24.50.179:8888" && export http_proxy  && export https_proxy  && \ 
yum install -y openssh-server   

#RUN sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config  

RUN http_proxy="http://10.24.48.104:8888" && https_proxy="http://10.24.48.104:8888" && export http_proxy  && export https_proxy  && \ 
yum install -y sudo 
RUN http_proxy="http://10.24.48.104:8888" && https_proxy="http://10.24.48.104:8888" && export http_proxy  && export https_proxy  && \ 
yum install -y openssh-server 
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
RUN sed -ri 's/#UsePAM no/UsePAM no/g' /etc/ssh/sshd_config

RUN  ssh-keygen -t dsa -f /etc/ssh/ssh_host_dsa_key  
RUN  ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key  
RUN  ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key  
RUN  ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key  

   
RUN mkdir /var/run/sshd  

ADD bash_profile /root/.bash_profile
RUN echo 'root:root1234' | chpasswd
EXPOSE 22  
CMD ["/usr/sbin/sshd", "-D"]  

