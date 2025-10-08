# 1. Check Docker version
docker --version

# 2. See all downloaded images
docker images

# 3. Pull an image from Docker Hub
docker pull CONTAINER_IMAGE

# 4. Run (first test container)
docker run CONTAINER_IMAGE

# 5. Run Container Application (Replace the Placeholders with your Values)
docker run --name PERSONAL_CONTAINER_NAME -p HOST_PORT:CONTAINER_PORT -d IMAGE_NAME

# 6. See running containers
docker ps

# 7. See all containers (including stopped/hidden containers)
docker ps -a

# 8. Stop a container (replace CONTAINER_ID with container ID from docker ps)
docker stop CONTAINER_ID

# 9. Remove a container
docker rm CONTAINER_ID

# 10. Remove an image (replace IMAGE_ID with your Image ID)
docker rmi IMAGE_ID

#################################################

#################################################
# Try bash first
docker exec -it CONTAINER_NAME bash

# If bash is not available, use sh
docker exec -it my-apache sh
# Interact with Container
ls -l
cat /usr/local/apache2/conf/httpd.conf
echo "Hello from inside container" > /usr/local/apache2/htdocs/index.html

#################################################

#################################################












