FROM mybase

ENV  http_proxy http://10.25.0.35:8888
ENV  https_proxy http://10.25.0.35:8888
VOLUME /root 
VOLUME /home
RUN yum -y install git
RUN source ~/.bash_profile


# mount 
#RUN mkdir -p /opt/gitrepositries

VOLUME  /opt/gitrepositries /opt/gitrepositries
WORKDIR /opt/gitrepositries
CMD git init --bare

