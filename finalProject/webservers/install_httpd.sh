#!/bin/bash
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
echo "<h1> This is Group9_Final_Project </h1> <br>  <img src="https://gr9image.s3.amazonaws.com/Interesting.jpg" alt="Seneca" width="800" height="600">  " >  /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd
