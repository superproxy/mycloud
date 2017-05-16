/usr/sbin/sshd &
ssh localhost 

echo "172.17.0.4 myhadoop2" >> /etc/hosts

bin/start-hbase.sh
