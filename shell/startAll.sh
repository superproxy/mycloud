cd /opt/test
cd gitblit/gitblit-1.8.0
nohup ./gitblit.sh &




cd /opt/test
cd jenkins
export JENKINS_HOME=/opt/test/jenkins/.jenkins
# java -jar  jetty more better
nohup java -jar jenkins.war &


cd /opt/test
cd sonarqube-6.7.1/bin/linux-x86-64
./sonar.sh start


