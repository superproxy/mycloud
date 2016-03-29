dnsmasq
echo "nameserver 127.0.0.1"> /etc/resolv.conf
haproxy -db -f /etc/haproxy/haproxy.cfg
