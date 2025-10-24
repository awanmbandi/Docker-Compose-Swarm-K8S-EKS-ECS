# Step 1: Create deployment with 3 replicas (automatically creates ReplicaSet)
kubectl create deployment nginx-replicaset --image=nginx:latest --replicas=3 --port=80

# Step 2: Wait for all pods with the deployment label to be ready
kubectl wait --for=condition=ready pod -l app=nginx-replicaset --timeout=90s

# Step 3: View the deployment details
kubectl get deployment nginx-replicaset

# Step 4: View the ReplicaSet created by the deployment
kubectl get replicaset -l app=nginx-replicaset

# Step 5: View all pods created by the ReplicaSet
kubectl get pods -l app=nginx-replicaset

# Step 6: View pods with additional details like IP and node
kubectl get pods -l app=nginx-replicaset -o wide

# Step 7: Expose the deployment as a NodePort service
kubectl expose pod PORT_NAME  --type=SERVICE_TYPE --port=PORT_NUMBER --name=SERVICE_NAME
kubectl expose deployment nginx-replicaset --type=NodePort --port=80 --name=nginx-rs-service

# Step 8: View the service details
kubectl get svc nginx-rs-service

# Step 9: View detailed service information including endpoints
kubectl describe svc nginx-rs-service

# Step 10: Start port forwarding from EC2 port 8081 to service port 80, listen on all interfaces
kubectl port-forward service/nginx-rs-service 8081:80 --address=0.0.0.0 &

# Step 11: Test the service locally from EC2
curl http://localhost:8081

# Step 12: Get EC2 public IP to access from browser
curl http://checkip.amazonaws.com

# Step 13: Test multiple times to see load balancing across pods
curl http://localhost:8081
curl http://localhost:8081
curl http://localhost:8081

# Step 14: Scale the deployment up to 5 replicas
kubectl scale deployment nginx-replicaset --replicas=5

# Step 15: Verify the scaling - should see 5 pods
kubectl get pods -l app=nginx-replicaset

# Step 16: Scale down to 2 replicas
kubectl scale deployment nginx-replicaset --replicas=2

# Step 17: Verify scaling down - should see 2 pods
kubectl get pods -l app=nginx-replicaset

# Step 18: Test self-healing by deleting one pod (ReplicaSet will recreate it)
kubectl delete pod $(kubectl get pods -l app=nginx-replicaset -o jsonpath='{.items[0].metadata.name}')

# Step 19: Watch pods being recreated in real-time (Ctrl+C to stop)
kubectl get pods -l app=nginx-replicaset -w

# Step 20: View deployment details with replicas and availability
kubectl get deployment nginx-replicaset -o wide

# Step 21: View logs from all pods in the ReplicaSet
kubectl logs -l app=nginx-replicaset

# Step 22: View logs from a specific pod
kubectl logs <pod-name>

# Step 23: Check all running port-forward processes
jobs

# Step 24: View detailed deployment information
kubectl describe deployment nginx-replicaset

# Step 25: View ReplicaSet events and details
kubectl describe replicaset -l app=nginx-replicaset

