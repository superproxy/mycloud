varnishd -f /etc/varnish/default.vcl -s malloc,100M -T 0.0.0.0:2000 -a 0.0.0.0:80
#varnishlog
