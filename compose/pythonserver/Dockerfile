FROM mybase
ADD . /code
WORKDIR /code
RUN http_proxy="http://10.24.51.186:8888" && https_proxy="http://10.24.51.186:8888" && export http_proxy  && export https_proxy  && \
yum install -y python 
RUN http_proxy="http://10.24.51.186:8888" && https_proxy="http://10.24.51.186:8888" && export http_proxy  && export https_proxy  && \
yum install -y python-pip 
RUN alias md=mkdir
#RUN http_proxy="http://10.24.51.186:8888" && https_proxy="http://10.24.51.186:8888" && export http_proxy  && export https_proxy  && \
#pip install -r requirements.txt

#RUN pip install -proxy=http_proxy="http://10.24.51.186:8888"  -r requirements.txt
RUN http_proxy="http://10.24.51.186:8888" && https_proxy="http://10.24.51.186:8888" && export http_proxy  && export https_proxy  && \
pip  --trusted-host pypi.v2ex.com  install -i http://pypi.v2ex.com/simple Flask
RUN http_proxy="http://10.24.51.186:8888" && https_proxy="http://10.24.51.186:8888" && export http_proxy  && export https_proxy  && \
pip  --trusted-host pypi.v2ex.com  install -i http://pypi.v2ex.com/simple Redis
CMD python app.py
