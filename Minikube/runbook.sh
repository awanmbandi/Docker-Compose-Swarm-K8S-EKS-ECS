#!/bin/bash
###### What you’ll need
# Link: https://aws.plainenglish.io/running-minikube-on-an-amazon-linux-ec2-instance-bff31afdac53
# Amazon Linux 2
# 2 CPUs or more
# 2GB of free memory
# 30GB of free disk space
# Internet connection

#####Run Commands Manually####

## Download Minikube installer
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-latest.x86_64.rpm

## Install Minikube
sudo rpm -Uvh minikube-latest.x86_64.rpm

## Update the OS
sudo yum update -y

## Instance Docker
sudo amazon-linux-extras install docker -y

## Add the current user (ec2-user in my case) to the docker group so that you can run Docker commands without using sudo.
sudo usermod -aG docker $USER && newgrp docker

## Now let’s start and enable the Docker service
sudo systemctl start docker && sudo systemctl enable docker

## Let’s verify whether Docker has been installed correctly :
docker -v

## Now use the version giving above in the URL below (in my case it is v1.30.0)
curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.30.0/bin/linux/amd64/kubectl

## After that, perfom the following actions
sudo chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl

## Now let’s start Minikube and check:
minikube start

## Let’s check if kubectl is working by checking the list of pods
kubectl get pod -A

