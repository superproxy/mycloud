yum install git

cd /opt/
git clone httsp://github.com/superproxy/mycloud.git

#service  ss
cd  mycloud/shell/
chmod +x *.shell
./install_shadowsocks.sh


#
yum install saltstack

# install java  maven
yum install jdk

yum install maven


./gitblit.sh
./jenkins.sh
./sonar.sh
.

