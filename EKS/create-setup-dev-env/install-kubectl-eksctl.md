###### CREATE A DEV VM FOR EKS CLUSTER #######
- Name: `eks-dev`
- AMI: `Amazon Linux 2`
- Instance type: `t2.micro`
- Keypair: select `your keypair`
- Launch Instance

### STEP 2: INSTALL KUBECTL AND EKSCTL
```bash
wget https://raw.githubusercontent.com/awanmbandi/Docker-Compose-Swarm-K8S-EKS-ECS/refs/heads/main/EKS/create-setup-dev-env/kubectl-eksctl-install.sh

bash kubectl-eksctl-install.sh

kubectl version

eksctl version
```

### STEP 2: CONNECT TO THE CLUSTER AND UPDATE THE `apiVersion` and add `interactiveMode`
```bash
aws eks update-kubeconfig --name EKS_CLUSTER_NAME --region CLUSTER_REGION

sed -i 's|apiVersion: client.authentication.k8s.io/v1alpha1|apiVersion: client.authentication.k8s.io/v1|' ~/.kube/config

sed -i '/command: aws/a\      interactiveMode: Never' ~/.kube/config
```

###### VERIFY CLUSTER IS WORKING 
```bash
kubectl get nodes
kubectl get pods
```