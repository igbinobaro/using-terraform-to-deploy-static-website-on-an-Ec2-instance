#!/bin/bash
yum update -y 
yum install -y httpd
cd /var/www/html
wget https://github.com/igbinobaro/techweb/raw/main/techweb-main.zip
unzip techweb-main.zip
cp -r /var/www/html/techweb-main/* /var/www/html
rm -rf techweb-main.zip techweb-main
systemctl enable httpd
systemctl start httpd