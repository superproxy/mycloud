./etcdctl --endpoints "http://10.24.48.5:4001"  set /haproxy/servers/server1   "nginx_1"
./etcdctl --endpoints "http://10.24.48.5:4001"  set /haproxy/servers/server2   "nginx_2"
./etcdctl --endpoints "http://10.24.48.5:4001"  set /haproxy/servers/server3   "nginx_3"
