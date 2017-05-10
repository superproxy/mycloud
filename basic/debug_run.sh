if [ -z $1 ];then
echo "usage: run.sh module_name"
exit
fi
docker run  -it  my$1 /bin/bash
