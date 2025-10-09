# Flow-2: Create a new Docker Image, Run as Container and Push to AWS ECR
###### Install AWS CLI 
```bash
sudo apt install unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

## Step-1: Run the base Nginx container
- Access the URL http://localhost
```
docker run --name PERSONAL_CONTAINER_NAME -p HOST_PORT:CONTAINER_PORT -d IMAGE_NAME
docker run --name mynginxdefault -p 80:80 -d nginx
docker ps
docker stop mynginxdefault
```

```bash
Explanation:
-d: Runs the container in detached mode (in the background).
-p 8080:80: Maps port 8080 on your host to port 80 in the container.
--name my-nginx: Names the container my-nginx.
nginx: The official Nginx Docker image.
```

## Step-2: Create Dockerfile and copy our customized index.html
- **Dockerfile**
```
FROM nginx
COPY index.html /usr/share/nginx/html
```

## Step-3: Build Docker Image & Push to AWS ECR
```
docker build -t awanmbandi/mynginx_image1:v1 .
docker build YOUR_ACCOUNT_ID.dkr.ecr.YOUR_REGION_ID.amazonaws.com/YOUR_ECR_REPO:TAG

aws ecr get-login-password --region YOUR_ECR_REGION | docker login --username AWS --password-stdin YOUR_ACCOUNT_ID.dkr.ecr.YOUR_REGION_ID.amazonaws.com

docker tag YOUR_IMAGE_NAME:TAG YOUR_ACCOUNT_ID.dkr.ecr.YOUR_REGION_ID.amazonaws.com/YOUR_ECR_REPO:TAG

docker push YOUR_ACCOUNT_ID.dkr.ecr.YOUR_REGION_ID.amazonaws.com/YOUR_ECR_REPO:TAG
```

## Step-4: Tag & push the Docker image to docker hub
```
docker images
docker build <your-docker-hub-id>/mynginx_image1:v1 .
docker tag awanmbandi/mynginx_image1:v1 awanmbandi/mynginx_image1:v1-release
docker push awanmbandi/mynginx_image1:v1-release

Replace your docker hub account Id
docker tag <your-docker-hub-id>/mynginx_image1:v1 <your-docker-hub-id>/mynginx_image1:v1-release
docker push <your-docker-hub-id>/mynginx_image1:v1-release
```
## Step-5: Verify the same on docker hub
- Login to docker hub and verify the image we have pushed
- Url: https://hub.docker.com/repositories

## Login and Push
docker login

docker login -u <username>

docker push image_name:latest


## Other Subjects
SonarQube Scanner
Snyk
Multibranch Scan Webhook Trigger
Eclipse Temurin installer
Pipeline: Stage View
Docker
Docker Commons
Docker Pipeline
docker-build-step
Docker API
Kubernetes
Kubernetes CLI
Kubernetes Credentials
Kubernetes Client API
Kubernetes Credentials Provider
Kubernetes :: Pipeline :: DevOps Steps
Slack Notification
ssh-agent
BlueOcean
Build Timestamp