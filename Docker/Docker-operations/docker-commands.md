# Docker Essential Commands
This document provides a list of essential Docker commands along with their descriptions.

## Docker Container Management Commands

#### Test
| Command | Description |
|---------|-------------|
| `docker ps` | List all running containers |
| `docker ps -a` | List all containers (both running and stopped) |
| `docker stop <container-id>` | Stop a running container |
| `docker start <container-id>` | Start a stopped container |
| `docker restart <container-id>` | Restart a running container |
| `docker rm <container-id>` | Remove a stopped container |
| `docker rm -f <container-id>` | Forcefully remove a running container |
| `docker exec -it <container-name> /bin/sh` | Connect to a running container and execute commands |
| `docker logs <container-id>` | Fetch the logs of a container |
| `docker inspect <container-id>` | Return low-level information on Docker objects |
| `docker top <container-id>` | Display the running processes of a container |
| `docker stats` | Display a live stream of container(s) resource usage statistics |
| `docker port <container-id>` | List port mappings for the container |
| `docker rename <old-name> <new-name>` | Rename a container |
| `docker update <container-id>` | Update configuration of one or more containers |

## Docker Image Management Commands

| Command | Description |
|---------|-------------|
| `docker images` | List all images |
| `docker pull <image-name>` | Pull an image from a registry |
| `docker push <image-name>` | Push an image to a registry |
| `docker rmi <image-id>` | Remove an image |
| `docker build -t <image-name> .` | Build an image from a Dockerfile |
| `docker tag <image-id> <new-image-name>` | Tag an image |
| `docker history <image-id>` | Show the history of an image |
| `docker save -o <file-name>.tar <image-name>` | Save an image to a tar archive |
| `docker load -i <file-name>.tar` | Load an image from a tar archive |

## Docker Network Management Commands

| Command | Description |
|---------|-------------|
| `docker network ls` | List all networks |
| `docker network create <network-name>` | Create a new network |
| `docker network inspect <network-name>` | Display detailed information on one or more networks |
| `docker network connect <network-name> <container-id>` | Connect a container to a network |
| `docker network disconnect <network-name> <container-id>` | Disconnect a container from a network |
| `docker network rm <network-name>` | Remove one or more networks |

## Docker Volume Management Commands

| Command | Description |
|---------|-------------|
| `docker volume ls` | List all volumes |
| `docker volume create <volume-name>` | Create a new volume |
| `docker volume inspect <volume-name>` | Display detailed information on one or more volumes |
| `docker volume rm <volume-name>` | Remove one or more volumes |
| `docker volume prune` | Remove all unused volumes |

## Docker System and Information Commands

| Command | Description |
|---------|-------------|
| `docker version` | Show the Docker version information |
| `docker info` | Display system-wide information |
| `docker system df` | Show docker disk usage |
| `docker system prune` | Remove all unused containers, networks, images, and optionally, volumes |
| `docker events` | Get real-time events from the server |
| `docker login -u <username> -p <password>` | Log in to a Docker registry |
| `docker logout` | Log out from a Docker registry |
| `docker search <term>` | Search the Docker Hub for images |
| `docker cp <container-id>:<path> <host-path>` | Copy files/folders between a container and the local filesystem |
| `docker commit <container-id> <image-name>` | Create a new image from a container's changes |

## Docker Compose Commands

| Command | Description |
|---------|-------------|
| `docker-compose up` | Create and start containers |
| `docker-compose down` | Stop and remove containers, networks, images, and volumes |
| `docker-compose build` | Build or rebuild services |
| `docker-compose logs` | View output from containers |
| `docker-compose ps` | List containers |
| `docker-compose restart` | Restart services |
| `docker-compose start` | Start services |
| `docker-compose stop` | Stop services |
| `docker-compose pull` | Pull service images |
| `docker-compose push` | Push service images |
