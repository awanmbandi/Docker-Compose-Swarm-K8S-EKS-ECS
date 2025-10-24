
## Forward the pod to access application 
kubectl port-forward service/SERVICE_NAME LOCAL_PORT:REMOTE_PORT --address=NETWORK_IP_RANGE
kubectl port-forward service/hello 31000:8080 --address=0.0.0.0

## ========================================================================
## ========================================================================

# The Kubernetes command-line tool
kubectl
The Kubernetes command-line tool

# Subcommand that creates a tunnel/proxy
# Forwards network traffic from your local machine to a Kubernetes resource
port-forward

# Target resource type and name
# service/ = targeting a Kubernetes Service (not a Pod directly)
service/nginx

# Port mapping: <LOCAL_PORT>:<REMOTE_PORT>
8080:80
8080 = Port on your EC2 instance (where you connect from browser)
80 = Port inside the container where NGINX is listening

# Listen address (bind address)
# Traffic flow: Browser → EC2:8080 → kubectl → Minikube → nginx-pod:80
--address=0.0.0.0

