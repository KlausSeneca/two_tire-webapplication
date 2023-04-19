Pre-Requisites for the successful deployment:

s3 buckets needed to be add in the code:

•	For Final Project: name of your bucket
o	Folder structure for the tfstate in the S3 bucket is
o	Network-Module: final-net/
o	Webserver-Module: final-web/

ssh-keys needed for the instances:
•	For final project: FinalProject
•	Command: ssh-keygen -t rsa -f FinalProject
//If this is not present 

do the command git clone https://github.com/KlausSeneca/two_tire-webapplication.git
It will ask for the github_token you should request it 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


Ansible configuration:
Install ansible  sudo yum install ansible
Install boto3    sudo pip install boto3
Run the comand: sudo vim /etc/ansible/ansible.cfg
modify the cofige file
inventory      = /home/ec2-user/environment/two_tire-webapplication/Ansible/hosts.txt
ansible_user   = ec2-user
ansible_ssh_private_key = /home/ec2-user/environment/two_tire-webapplication/finalProject/webservers/FinalProject



Change the directory to the network from the root: cd environment/finalProject/network 
1)Start with the network folder, we will deploy the network of the dev environment using:
tf init
tf plan
tf apply
2)Change the directory to the webservers from the root: cd environment/two_tire-webapplication/finalProject/webservers. 
tf init
tf plan
tf apply
After deploying everything, we will change directory to the webservers folder so that we can try to connect to the bastion using bastion_eip with the FinalProject key:
Change directory to the dev-webservers folder: cd environment/two_tire-webapplication/finalProject/webservers. 
Command: ssh -i FinalProject ec2-user@bastion_eip
After we connect to the bastion then we will connect to the instances deployed in the private subnet of the dev environment and the prod environment.
First, we will copy the assignment1_dev key in the bastion so that we can connect to the instance that are deployed in the dev environment: Command: vi key (Copy the FinalProject in this key).
Change the mode of the key: chmod 400 key
For  Instances:
Command: ssh -i key ec2-user@private_ip of the vm5 
Command: ssh -i dev-key ec2-user@private_ip of the vm6

3)Change the directory to the webservers from the root: cd environment/two_tire-webapplication/Ansible. 
test the ssh by running the command 
ansible -i hosts.txt linux -m ping
expected return is a green text with pong as result
Run the command  ansible-inventory -i aws_ec2.yaml --graph
to see the tags selected
Run the command ansible-playbook -i aws_ec2.yaml Myplaybook.yaml
this will install the apache server in our linux webservers.

Destroy webservers cd environment/finalProject/webservers
terraform destroy
Destroy network  cd environment/finalProject/network
terraform destroy
