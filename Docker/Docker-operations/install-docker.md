# Docker 
# Creating and Using Containers Like a Boss
## Install Docker On CentOS, Ubuntu, Debian, RHEL, Fedora etc
- ► https://docs.docker.com/engine/install/

## Install Docker on Amazon Linux 2
``
#!/bin/bash
sudo yum update -y
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
sudo groupadd docker
sudo usermod -aG docker ec2-user
newgrp docker
docker version
``
########################################
### Install Docker on Amazon Linux 2 ###
########################################
#!/bin/bash
sudo yum update -y
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker
sudo groupadd docker
sudo usermod -aG docker ec2-user
newgrp docker
docker version


## Check Our Docker Install and Config

docker version

docker info



