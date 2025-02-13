### Build application/Image
docker build -t .
docker build -t feedback-node:volumes .


### Run application/Image

docker stop feedback-app  # Only when there's a running copy of this copy

docker rm feedback-app

docker run -p 3000:80 -d --name feedback-app --rm feedback-node:volumes


### 


### Access Application

HostIpAddress:3000/feedback/title.txt"make sure your title is in lower case because it gets translated"


### RUN DOCKER VOLUME COMMANDS 
### STOP the container app and REMOVE the container then TRY TO ACCESS AGAIN AND YOU'LL NOTICE DATA is GONE

docker volume ls

docker stop feedback-app

docker rm feedback-app

RUN AGAIN: docker volume ls   "You'll notice it's gone"


### RUN DOCKER VOLUME COMMANDS 

docker volume ls


