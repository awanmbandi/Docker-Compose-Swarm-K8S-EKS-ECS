# example-voting-app-kubernetes-v2

This is based on the original [example-voting-app](https://github.com/dockersamples/example-voting-app) from docker-examples(https://github.com/dockersamples)

## Create a new namespace where all these deployments will be done in

kubectl create ns votingapp-dev

kubectl apply -f K8S_MANIFEST_NAME -n votingapp-dev

### Deploy All Microservices (Vote, Result, Worker, Redis and Services)
kubectl apply -f PROVIDE_THE_MANIFEST_CONFIG_FILE -n votingapp-dev

## Show how to scale the deployment 
- Increase RS Numbers

## GET THE RESOURCES

kubectl get ns -n votingapp-dev

kubectl get deployments -n votingapp-dev or deploy 

kubectl get svc -n votingapp-dev

kubectl get pods -n votingapp-dev

kubectl get all -n votingapp-dev

## ACCESS Application
1. VOTING SERVICE

2. RESULT SERVICE

# Add Deployment Strategy `Rolling Update`
- Do it for Voting App or any
https://www.bluematador.com/blog/kubernetes-deployments-rolling-update-configuration#:~:text=In%20your%20Deployment%20manifest%2C%20spec.strategy.type%20has%20two%20possible,RollingUpdate%20is%20the%20preferable%20update%20strategy%20for%20Deployments.

