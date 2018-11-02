yum install git

cd /opt/
git clone httsp://github.com/superproxy/mycloud.git




#
#yum install -y saltstack

 yum install -y ansible




#service  ss
cd  mycloud/shell/
chmod +x *.shell
./install_shadowsocks.sh






# dev=============
# install java  maven
yum install -y java-1.8.0-openjdk-devel

yum install -y maven

yum install docker
# dev end==========


./gitblit.sh
./jenkins.sh
./sonar.sh

