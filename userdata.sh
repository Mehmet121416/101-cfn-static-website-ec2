#! /bin/bash
yum update -y
yum install httpd -y
FOLDER="https://raw.githubusercontent.com/Mehmet121416/101-cfn-static-website-ec2/main/static-web"
cd /var/www/html
wget ${FOLDER}/index.html
wget ${FOLDER}/cat0.jpg
wget ${FOLDER}/cat1.jpg
wget ${FOLDER}/cat2.jpg
wget ${FOLDER}/cat3.png
systemctl start httpd
systemctl enable httpd 