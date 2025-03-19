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


## DELETE THE CLUSTER NODE GROUP #
eksctl delete nodegroup \
  --cluster eks-cluster \
  --name eks-cluster-ng \
  --region us-east-2

## DELETE THE EKS CLUSTER
eksctl delete cluster \
  --name eks-cluster \
  --region us-east-2

###### CONNECT TO YOUR EKS CLUSTER #######
aws eks update-kubeconfig --name EKS_CLUSTER_NAME --region CLUSTER_REGION
