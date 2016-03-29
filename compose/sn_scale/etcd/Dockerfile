FROM mybase
# unsupport  ~
WORKDIR opt 
#RUN http_proxy="http://10.24.48.104:8888" && https_proxy="http://10.24.48.104:8888" && export http_proxy  &&     export https_proxy  && \
#wget https://github.com/coreos/etcd/releases/download/v2.3.0/etcd-v2.3.0-linux-amd64.tar.gz
COPY ./etcd-v2.3.0-linux-amd64.tar.gz /opt/ 
RUN tar -zxvf  /opt/etcd-v2.3.0-linux-amd64.tar.gz
WORKDIR /opt/etcd-v2.3.0-linux-amd64/

#CMD ["./etcd","--advertise-client-urls http://0.0.0.0:2379,http://0.0.0.0:4001 -listen-client-urls http://0.0.0.0:2379,http://0.0.0.0:4001 " ]
ADD  ./etcd.sh / 
#CMD ["bash","-c", "etcd"]
ENTRYPOINT /etcd.sh

