###### CREATE AN ADMIN VM FOR EKS #######
- Start by Choosing a Region you know 
  it's Default VPC has not been tempred with.
- Name: `eks-admin`
- AMI: `Amazon Linux 2`
- Instance type: `t2.micro`
- Keypair: select `your keypair`
- Launch Instance

###### STEP 2: INSTALL KUBECTL AND EKSCTL
sudo yum install git -y

wget https://raw.githubusercontent.com/awanmbandi/Docker-Compose-Swarm-K8S-EKS-ECS/refs/heads/main/EKS/create-setup-dev-env/kubectl-eksctl-install.sh

bash kubectl-eksctl-install.sh

kubectl version

eksctl version

###### STEP 3: CREATE EKS CLUSTER (Takes about 15 Minutes)
eksctl create cluster \
  --name CLUSTER_NAME \
  --version 1.32 \
  --region CLUSTER_REGION \
  --nodegroup-name CLUSTER_NODE_GROUP_NAME \
  --node-type t2.medium \
  --nodes 2 \
  --nodes-min 1 \
  --nodes-max 4 \
  --managed

###### STEP 4: CONNECT TO THE CLUSTER AND UPDATE THE `apiVersion` and add `interactiveMode`
aws eks update-kubeconfig --name EKS_CLUSTER_NAME --region CLUSTER_REGION

sed -i 's|apiVersion: client.authentication.k8s.io/v1alpha1|apiVersion: client.authentication.k8s.io/v1|' ~/.kube/config

sed -i '/command: aws/a\      interactiveMode: Never' ~/.kube/config

###### STEP 5: VERIFY CLUSTER IS WORKING 
kubectl get nodes
kubectl get pods

