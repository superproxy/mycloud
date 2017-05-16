# remove continer
docker rm -f     myhbase2
# --name contianer_name
docker run  --name myhbase2 -v /work:/work  myhbase2 
