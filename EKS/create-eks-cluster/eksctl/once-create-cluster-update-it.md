### STEP 1: Update Kubectl and AWS CLI
```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version  # Should output aws-cli/2.x.x

curl -Lo aws-iam-authenticator https://github.com/kubernetes-sigs/aws-iam-authenticator/releases/latest/download/aws-iam-authenticator-linux-amd64
chmod +x aws-iam-authenticator
sudo mv aws-iam-authenticator /usr/local/bin/
aws-iam-authenticator version

curl -LO "https://dl.k8s.io/release/v1.30.0/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/
kubectl version --client
```

### STEP 2: Update the apiVersion and add Interactive mode
```bash
sed -i 's|apiVersion: client.authentication.k8s.io/v1alpha1|apiVersion: client.authentication.k8s.io/v1|' ~/.kube/config
sed -i '/command: aws/a\      interactiveMode: Never' ~/.kube/config
```
"""""""""""""THE OUTPUT SHOULD LOOK LIKE THIS"""""""""""""""""
- name: arn:aws:eks:us-east-2:891612555415:cluster/eks-cluster
  user:
    exec:
      apiVersion: client.authentication.k8s.io/v1
      args:
      - --region
      - us-east-2
      - eks
      - get-token
      - --cluster-name
      - eks-cluster
      command: aws
      interactiveMode: Never

### STEP 2: TEST 
```bash
kubectl get nodes
kubectl get pods
```