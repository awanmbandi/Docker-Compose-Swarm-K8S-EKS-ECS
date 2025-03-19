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

