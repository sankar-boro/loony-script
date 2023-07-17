#!/bin/bash

sudo apt update && sudo apt upgrade
sudo apt-get install mysql-server
sudo apt install mysql-client
echo 
VERSION=$(mysql --version)
echo $VERSION
echo 
sudo service mysql status


# fix mysql_secure_installation

# sudo mysql
# ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password by 'password';
