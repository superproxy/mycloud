# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin
export PATH

#http_proxy="http://14120295:btg56x@10.18.16.238:8181"
#http_proxy="http://10.25.0.232:8888"
http_proxy="http://10.24.50.179:8888"
https_proxy="http://10.24.50.179:8888"
git config --global http.proxy http://10.24.50.179:8888


alias md=mkdir

export http_proxy
export https_proxy

