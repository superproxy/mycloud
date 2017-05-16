docker stop myetcd
docker rm   myetcd
docker run  --name myetcd -p 4001:4001 -d etcd

