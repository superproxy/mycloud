cd /opt/tmp

# repostory
wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
# install
sudo yum install mysql-server
groupadd mysql
useradd mysql -g mysql -p mysql 
sudo chown -R mysql:mysql /var/lib/mysql
service mysqld restart
echo mysql -u root
echo mysqladmin -u root password yourpassword
echo mysql -u root -p
