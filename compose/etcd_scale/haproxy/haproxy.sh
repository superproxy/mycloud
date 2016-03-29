echo "nameserver 127.0.0.1"> /etc/resolv.conf
dnsmasq

/opt/confd/confd  -node http://etcd:4001

haproxy -db -f /etc/haproxy/haproxy.cfg
#haproxy -D -f /etc/haproxy/haproxy.cfg

