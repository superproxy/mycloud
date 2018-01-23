mkdir -p /opt/jekins
cd /opt/jekins
wget  http://mirrors.jenkins.io/war-stable/latest/jenkins.war 
nohup java -jar jenkins.war &
