# Create nginx pod imperatively
kubectl run DESIRED_PORT_NAME --image CONTAINER_IMAGE_NAME:TAG --port=CONTAINER_PORT_NUMBER
kubectl run nginx-pod --image=nginx:latest --port=80 

# Check the pod status and details
kubectl get pods

# Expose the pod as a NodePort service on port 80
kubectl expose pod PORT_NAME  --type=SERVICE_TYPE --port=PORT_NUMBER --name=SERVICE_NAME
kubectl expose pod nginx-pod --type=NodePort --port=80 --name=nginx-pod-service

# View the service details including NodePort
kubectl get svc
kubectl get svc nginx-pod-service

# View detailed service information
kubectl describe svc SERVICE_NAME
kubectl describe svc nginx-pod-service

# Start port forwarding from EC2 port 8080 to pod port 80, listen on all interfaces
kubectl port-forward service/SERVICE_NAME LOCAL_PORT:REMOTE_PORT --address=NETWORK_IP_RANGE
kubectl port-forward pod/nginx-pod 8080:80 --address=0.0.0.0 &

# View detailed pod information including events
kubectl describe pod nginx-pod
