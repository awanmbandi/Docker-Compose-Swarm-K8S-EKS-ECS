## NAMED VOLUMES PERSIST DATA
- You can't create named volumes inside of a container, instead you create them during container RUN 
(When runnining a container)
- Edit the DOCKERFILE by removing the Annonymmous VOLUME instruction and REBUILD your APPLICATION
- tHEN BUILD AGAIN BY RUNNINJG THE BELOW COMMANDS
- Name volumes are attached to one specific container while NAMED volumes are not

### Build application/Image
docker build -t .
docker build -t feedback-node:volumes .


### Run application/Image

docker stop feedback-app  # Only when there's a running copy of this copy

docker rm feedback-app

docker run -p 3000:80 -d --name feedback-app --rm -v feedback:/app/feedback feedback-node:volumes

(The diffeence here is the "-v")

### 


### Access Application

HostIpAddress:3000/feedback/title.txt"make sure your title is in lower case because it gets translated"


### RUN DOCKER VOLUME COMMANDS 
### STOP the container app and REMOVE the container then TRY TO ACCESS AGAIN AND YOU'LL NOTICE DATA is GONE

docker volume ls

docker stop feedback-app 

docker rm feedback-app

RUN AGAIN: docker volume ls   "You'll notice it'll persist this time"

### RUN DOCKER VOLUME COMMANDS 

docker volume ls


### RUN ANOTHER COPY OF THE SAME APP, with the same VOLUME declaration and IT'LL WORK

docker run -p 3000:80 -d --name feedback-app --rm -v feedback:/app/feedback feedback-node:volumes





