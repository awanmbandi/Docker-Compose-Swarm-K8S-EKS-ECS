###########################################################
########### DOCKER CONTAINER MANAGEMENT COMMANDS ##########
###########################################################
### List all running containers
docker ps

### List all containers (both running and stopped)
docker ps -a

### Stop a running container
docker stop <container-id>

### Start a stopped container
docker start <container-id>

### Restart a running container
docker restart <container-id>

### Remove a stopped container
docker rm <container-id>

### Forcefully remove a running container
docker rm -f <container-id>

### Connect to a running container and execute commands
docker exec -it <container-name> /bin/sh

### Fetch the logs of a container
docker logs <container-id>

### Return low-level information on Docker objects
docker inspect <container-id>

### Display the running processes of a container
docker top <container-id>

### Display a live stream of container(s) resource usage statistics
docker stats

### List port mappings for the container
docker port <container-id>

### Rename a container
docker rename <old-name> <new-name>

### Update configuration of one or more containers
docker update <container-id>

### Docker Image Management Commands
### List all images
docker images

### Pull an image from a registry
docker pull <image-name>

### Push an image to a registry
docker push <image-name>

### Remove an image
docker rmi <image-id>

### Build an image from a Dockerfile
docker build -t <image-name> .

### Tag an image
docker tag <image-id> <new-image-name>

### Show the history of an image
docker history <image-id>

### Save an image to a tar archive
docker save -o <file-name>.tar <image-name>

### Load an image from a tar archive
docker load -i <file-name>.tar

###########################################################
########### DOCKER NETWORK MANAGEMENT COMMANDS ############
###########################################################
### List all networks
docker network ls

### Create a new network
docker network create <network-name>

### Display detailed information on one or more networks
docker network inspect <network-name>

### Connect a container to a network
docker network connect <network-name> <container-id>

### Disconnect a container from a network
docker network disconnect <network-name> <container-id>

### Remove one or more networks
docker network rm <network-name>

###########################################################
############ DOCKER VOLUME MANAGEMENT COMMANDS ############
###########################################################
### List all volumes
docker volume ls

### Create a new volume
docker volume create <volume-name>

### Display detailed information on one or more volumes
docker volume inspect <volume-name>

### Remove one or more volumes
docker volume rm <volume-name>

### Remove all unused volumes
docker volume prune

### Docker System and Information Commands
### Show the Docker version information
docker version

### Display system-wide information
docker info

### Show docker disk usage
docker system df

### Remove all unused containers, networks, images, and optionally, volumes
docker system prune

### Get real-time events from the server
docker events

### Log in to a Docker registry
docker login -u <username> -p <password>

### Log out from a Docker registry
docker logout

### Search the Docker Hub for images
docker search <term>

### Copy files/folders between a container and the local filesystem
docker cp <container-id>:<path> <host-path>

### Create a new image from a container's changes
docker commit <container-id> <image-name>


###########################################################
############ DOCKER IMAGE MANAGEMENT COMMANDS #############
###########################################################
# List all Docker images
docker images

### Pull an image from Docker Hub
docker pull nginx:latest

### Remove a specific Docker image
docker rmi nginx:latest

### Remove all unused images
docker image prune -a -f

### Inspect an image
docker inspect my-custom-image:latest

### Tag an image
docker tag <your-docker-hub-id>/mynginx_image1:v1 <your-docker-hub-id>/mynginx_image1:v1-release
