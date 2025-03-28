#!/bin/bash

sudo apt-get update -y
sudo apt-get install wget unzip apache2 -y  


sudo systemctl start apache2
sudo systemctl enable apache2

mkdir -p /tmp/webfile
cd /tmp/webfile

wget https://www.tooplate.com/download/2132_clean_work 
unzip 2132_clean_work -d dirname
cd dirname 
sudo cp -r 2132_clean_work/* /var/www/html/

systemctl restart apache2

systemctl status apache2

