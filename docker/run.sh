if [ -z $1 ];then
echo "usage: run.sh module_name"
exit
fi
docker run   my$1 
