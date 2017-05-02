docker stop varnish_nginx_1
docker rm varnish_nginx_1

docker stop varnish_nginx_2
docker rm varnish_nginx_2

docker stop varnish
docker rm varnish

docker run -d --name  varnish_nginx_1  mynginx 
docker run -d --name  varnish_nginx_2  mynginx 
docker run -d --link varnish_nginx_1 --link varnish_nginx_2  -p 80:80 --name varnish  myvarnish  
