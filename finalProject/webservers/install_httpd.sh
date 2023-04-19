#!/bin/bash
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
echo "<h1> This is Group 9. We are presenting the Final Project. </h1> <br>  <img src="https://testgr9project.s3.amazonaws.com/Interesting.jpg" alt="Seneca" width="90%" height="100%">  " >  /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd
