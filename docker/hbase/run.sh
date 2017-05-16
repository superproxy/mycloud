# remove continer
docker rm -f     myhbase
# --name contianer_name
docker run  --name myhbase -v /work:/work  myhbase 
