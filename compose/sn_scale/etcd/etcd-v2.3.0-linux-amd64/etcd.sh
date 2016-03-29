ip=`hostname -I`
ip=127.0.0.1
./etcd --advertise-client-urls  http://${ip}:2379,http://$ip:4001 -listen-client-urls http://$ip:2379,http://$ip:4001

#./etcd --advertise-client-urls  'http://0.0.0.0:2379,http://0.0.0.0:4001' -listen-client-urls 'http://0.0.0.0:2379,http://0.0.0.0:4001'
