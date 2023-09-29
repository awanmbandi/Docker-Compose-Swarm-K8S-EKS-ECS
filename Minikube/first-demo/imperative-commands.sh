## RUNBOOK
- https://github.com/stacksimplify/kubernetes-fundamentals/tree/master/02-PODs-with-kubectl

## DEPLOY AN ECOMMERCE APPPLICATION AND EXPOSE VIA NODE PORT
## Deploy a Ecommerce App
kubectl run <desired-pod-name> --image <Container-Image>
kubectl run ecommercewebapp --image awanmbandi/ecommerceapp:latest --generator=run-pod/v1

## Creating a Kubernetes Service
kubectl expose pod <Pod-Name>  --type=NodePort --port=80 --name=<Service-Name>
kubectl expose pod my-first-pod  --type=NodePort --port=80 --name=my-first-service


## DEPLOY NGINX APPPLICATION AND EXPOSE VIA NODE PORT
## Deploy an Nginx App/Pod
kubectl run nginxwebapp --image nginx:latest --generator=run-pod/v1

## Creating a Kubernetes Service
kubectl expose pod nginx --type=NodePort --port=80 --name=nginx-service