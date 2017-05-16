#
# This is an example VCL file for Varnish.
#
# It does not do anything by default, delegating control to the
# builtin VCL. The builtin VCL is called when there is no explicit
# return statement.
#
# See the VCL chapters in the Users Guide at https://www.varnish-cache.org/docs/
# and http://varnish-cache.org/trac/wiki/VCLExamples for more examples.

# Marker to tell the VCL compiler that this VCL has been adapted to the
# new 4.0 format.
vcl 4.0;
import std;
import directors;

# Default backend definition. Set this to point to your content server.
#backend default {
#.host = "varnish_nginx_1";
#    .host = "127.0.0.1";
#    .port = "80";
#}
backend web1{
	.host = "varnish_nginx_1";
	.port = "80";
	.probe ={
		.interval = 5s;
		.timeout =1s; 
	}
}
backend web2{
	.host = "varnish_nginx_2";
	.port = "80";
	.probe ={
		.interval = 5s;
		.timeout =1s; 
	}
}

sub vcl_init {
# Happens before we check if we have this in cache already.
#
# Typically you clean up the request here, removing cookies you don't need,
# rewriting the request, etc.
	new cluster1 = directors.round_robin();
	cluster1.add_backend(web1);
	cluster1.add_backend(web2);
}


sub vcl_recv {
# Happens before we check if we have this in cache already.
#
# Typically you clean up the request here, removing cookies you don't need,
# rewriting the request, etc.
	set req.backend_hint = cluster1.backend();
	if(req.http.x-fowarded-for) {
		set  req.http.X-Forwarded-For = req.http.X-Forwarded-For +"," + client.ip; 
	} else {
		set  req.http.X-Forwarded-For = client.ip; 
	}
}

sub vcl_backend_response {
# Happens after we have read the response headers from the backend.
#
# Here you clean the response headers, removing silly Set-Cookie headers
# and other mistakes your backend does.
}

sub vcl_deliver {
# Happens when we have all the pieces we need, and are about to send the
# response to the client.
#
# You can do accounting or modifying the final object here.
	if(obj.hits >0) {
		set resp.http.X-CacheV="HIT from "+ server.ip;
	} else {
		set resp.http.X-CacheV="MISS";
	}
}
