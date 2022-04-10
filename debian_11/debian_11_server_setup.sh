#!/bin/bash

sudo cp ./sources.list /etc/apt

sudo apt-get update
sudo apt-get upgrade -y

# Python 3
sudo apt install python3-pip
sudo apt install pipenv

# nginx
sudo wget http://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key

echo -e "deb http://nginx.org/packages/ubuntu focal nginx\ndeb-src http://nginx.org/packages/ubuntu focal nginx" >> file.txt

sudo apt-get update
sudo apt-get install nginx -y
