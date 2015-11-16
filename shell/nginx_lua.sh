#
mkdir nginx
cd nginx

#wget
yum -y install wget
yum -y install git

#download
if [ ! -f "LuaJIT-2.0.4.tar.gz" ]; then 
wget http://luajit.org/download/LuaJIT-2.0.4.tar.gz
fi
if [ ! -f "nginx-1.9.4.tar.gz" ]; then 
wget http://nginx.org/download/nginx-1.9.4.tar.gz
fi
git clone https://github.com/simpl/ngx_devel_kit.git
git clone https://github.com/openresty/lua-nginx-module.git
#pre
yum -y install gcc
yum -y install  pcre-devel 
yum -y install openssl
yum -y install openssl-devel

#lua-git
tar -xzvf LuaJIT-2.0.4.tar.gz
cd LuaJIT-2.0.4
make && make install
cd ..


#install nginx
export LUAJIT_LIB=/usr/local/luajit/lib
export LUAJIT_INC=/usr/local/luajit/include/luajit-2.0
cp /usr/local/lib/libluajit-5.1.so.2 /usr/lib64/

tar -xzvf nginx-1.9.4.tar.gz
cd nginx-1.9.4
./configure --add-module=/root/nginx/ngx_devel_kit --add-module=/root/nginx/lua-nginx-module
make && make install

