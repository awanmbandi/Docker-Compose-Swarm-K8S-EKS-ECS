#### Summary of Access URLs
Nginx: http://<EC2-Public-IP>:8080
Apache: http://<EC2-Public-IP>:8081
WordPress: http://<EC2-Public-IP>:8082
Portainer: http://<EC2-Public-IP>:9000

############ DOCKER CONTAINER RUN COMMANDS ############ 
docker run --name PERSONAL_CONTAINER_NAME -p HOST_PORT:CONTAINER_PORT -d IMAGE_NAME

#### Deploy Nginx App
docker run -d -p 8080:80 --name my-nginx nginx

#### Deploy HTTPD App
docker run -d -p 8081:80 --name my-apache httpd

#### Deploy Wordpress App
docker run -d -p 8082:80 --name my-wordpress -e WORDPRESS_DB_HOST=mysql -e WORDPRESS_DB_USER=root -e WORDPRESS_DB_PASSWORD=password -e WORDPRESS_DB_NAME=wordpress wordpress

#### Deploy Portainer App
docker run -d -p 9000:9000 --name portainer --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

