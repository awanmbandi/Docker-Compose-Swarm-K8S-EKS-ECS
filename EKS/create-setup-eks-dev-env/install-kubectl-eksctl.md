###### CREATE A DEV VM FOR EKS CLUSTER #######
- Name: `eks-dev`
- AMI: `Amazon Linux 2`
- Instance type: `t2.micro`
- Keypair: select `your keypair`
- Launch Instance

### STEP 2: INSTALL KUBECTL AND EKSCTL
```bash
sudo yum install git -y

wget https://raw.githubusercontent.com/awanmbandi/Docker-Compose-Swarm-K8S-EKS-ECS/refs/heads/main/EKS/create-setup-dev-env/kubectl-eksctl-install.sh

bash kubectl-eksctl-install.sh

kubectl version

eksctl version
```

### STEP 3: CREATE EKS CLUSTER (Takes about 15 Minutes)
```bash
eksctl create cluster --name eks-cluster \
  --version 1.30 \
  --region us-east-2 \
  --nodegroup-name eks-cluster-ng \
  --node-type t2.medium \
  --nodes 3 \
  --nodes-min 1 \
  --nodes-max 4 \
  --managed
```

### STEP 4: CONNECT TO THE CLUSTER AND UPDATE THE `apiVersion` and add `interactiveMode`
```bash
aws eks update-kubeconfig --name EKS_CLUSTER_NAME --region CLUSTER_REGION

sed -i 's|apiVersion: client.authentication.k8s.io/v1alpha1|apiVersion: client.authentication.k8s.io/v1|' ~/.kube/config

sed -i '/command: aws/a\      interactiveMode: Never' ~/.kube/config
```

### STEP 5: VERIFY CLUSTER IS WORKING 
```bash
kubectl get nodes
kubectl get pods
```