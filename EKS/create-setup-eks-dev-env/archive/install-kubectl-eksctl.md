###### CREATE A DEV VM FOR EKS CLUSTER #######
- Name: `eks-dev`
- AMI: `Amazon Linux 2`
- Instance type: `t2.micro`
- Keypair: select `your keypair`
- Userdata: 
```bash
#!/bin/bash
#### Install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version --client

#### Install eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version
```
- Launch Instance


###### CONNECT TO YOUR EKS CLUSTER #######
- Update the KubeConfig
```bash
aws eks update-kubeconfig --name eks-cluster --region us-east-2
```
