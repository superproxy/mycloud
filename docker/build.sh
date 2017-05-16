if [ -z $1 ]; then
echo " usage: build.sh module_name"
exit
fi
cd $1
echo $1
docker  build -t my$1 .
