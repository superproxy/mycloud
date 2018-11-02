mkdir -p  /opt/test/gitblit
cd /opt/test/gitblit

wget http://dl.bintray.com/gitblit/releases/gitblit-1.8.0.tar.gz
tar -zxvf gitblit-1.8.0.tar.gz
cd gitblit-1.8.0
./install-service-centos.sh 
nohup ./gitblit.sh &