#!/bin/bash
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
echo "<h1> This is Group9_Final_Project </h1> <br>  <img src="https://testgr9project.s3.amazonaws.com/Interesting.jpg" alt="Girl in a jacket" width="500" height="600">  <br>Built by Terraform!" >  /var/www/html/index.html
sudo systemctl start httpd
sudo systemctl enable httpd
