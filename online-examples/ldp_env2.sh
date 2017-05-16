docker rm  ldp_nginx
docker rm  ldp_wildfly1
docker rm  ldp_wildfly2
docker rm  ldp_redis

docker run -d --name ldp_redis  myredis
docker run  -d --link ldp_redis  --name ldp_wildfly1   mywildfly
docker run -d --link ldp_redis  --name ldp_wildfly2  mywildfly
docker run -p 80:80 -d --name ldp_nginx --link ldp_wildfly1 --link ldp_wildfly2 mynginx

