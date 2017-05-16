FROM mybase
ADD ./src /src
WORKDIR /src
RUN http_proxy="http://10.24.48.104:8888" && https_proxy="http://10.24.48.104:8888" && export http_proxy  && export https_proxy  && \
yum install -y nodejs npm 
RUN npm config set https-proxy https://10.24.48.104:8888 && \
npm install
EXPOSE 80
EXPOSE 22 
#CMD ["node", "index.js"] 
CMD ["bash","-c", "/usr/sbin/sshd -D & node /src/index.js"] 
