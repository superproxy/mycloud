FROM myhbase


ENV http_proxy="http://10.24.19.135:8888"
ENV https_proxy="http://10.24.19.135:8888"

RUN wget https://raw.githubusercontent.com/naver/pinpoint/1.6.x/hbase/scripts/hbase-create.hbase


ADD ./init_pinpoint.sh  ./init_pinpoint.sh

#RUN shell







