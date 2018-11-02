mkdir -p /opt/test/sonar
cd /opt/test/sonar
wget https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-6.7.1.zip
unzip sonarqube-6.7.1.zip 
cd sonarqube-6.7.1/bin/linux-x86-64
./sonar.sh start

#debug
./sonar.sh console