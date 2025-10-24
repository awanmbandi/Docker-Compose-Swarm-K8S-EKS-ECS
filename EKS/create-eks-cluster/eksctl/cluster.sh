## CREATE EKS Cluster
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


eksctl create cluster \
  --name eks-cluster-1 \
  --version 1.34 \
  --region us-east-1 \
  --nodegroup-name eks-cluster-ng-1 \
  --node-type t2.medium \
  --nodes 2 \
  --nodes-min 1 \
  --nodes-max 4 \
  --managed






aws eks update-kubeconfig --name eks-cluster-1 --region us-east-1