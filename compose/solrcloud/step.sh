echo stop
docker stop wildfly_1
docker stop  wildfly_2
docker stop  wildfly_3
docker stop  wildfly_4
docker stop  nginx_1
docker stop  nginx_2 
echo  rm
docker rm  wildfly_1
docker rm wildfly_2
docker  rm wildfly_3
docker  rm wildfly_4
docker rm nginx_1
docker  rm nginx_2 

echo run mywildfly
docker run --name wildfly_1 -d  mywildfly
docker run --name wildfly_2 -d  mywildfly
docker run --name wildfly_3 -d  mywildfly
docker run --name wildfly_4 -d  mywildfly

echo run mynginx
docker run --link wildfly_1 --link  wildfly_2 --link wildfly_3 --link  wildfly_4 --name nginx_1 -v `pwd`/nginx/nginx.conf:/etc/nginx/nginx.conf -d mynginx
docker run --link wildfly_1 --link  wildfly_2 --link wildfly_3 --link  wildfly_4 --name nginx_2 -v `pwd`/nginx/nginx.conf:/etc/nginx/nginx.conf -d mynginx

docker stop haproxy
docker rm haproxy
docker build  -t myhaproxy  haproxy/.
echo run myhaproxy
docker run --link nginx_1 --link nginx_2 -p 80:80  --name haproxy -d  myhaproxy 
