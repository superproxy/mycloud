if [ -z $1 ];then
echo "usage: run.sh module_name"
exit
fi
docker run -v /work:/work  -it  $1 /bin/bash
