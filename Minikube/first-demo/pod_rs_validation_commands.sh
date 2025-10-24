# View all resources (pods, services, deployments, replicasets)
kubectl get all

# View only pods with labels shown
kubectl get pods --show-labels

# View all services
kubectl get services

# View service endpoints (shows which pods service routes to)
kubectl get endpoints

# Check which processes are port-forwarding
ps aux | grep port-forward

# Check if ports 8080 and 8081 are listening
sudo netstat -tlnp | grep 8080
sudo netstat -tlnp | grep 8081

# Alternative command to check listening ports
sudo ss -tlnp | grep 8080
sudo ss -tlnp | grep 8081

# View all pods across all namespaces
kubectl get pods -A

# Get cluster information
kubectl cluster-info

# View minikube status
minikube status

# Get minikube IP
minikube ip