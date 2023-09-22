## DOCKER HEALTH CHECKS

- Link Examples: https://scoutapm.com/blog/how-to-use-docker-healthcheck
- https://www.atatus.com/blog/health-check-command-in-docker/


## Docker Commands 
- Deploy the Application with Health Check
- Confirm health check status
- Exect into the Contianer using the below command and Sabotash/Delete all App Files in /app
    - loging to container: `docker exec -it mydb bash `
    - Try to access the application and you'll notice not working 
    - Exit and Run `docker ps` to Check the App Health State and you'll see `Unhealthy` 

## Remove All Docker Containers Running or Not at Once
- Delete All Containers: docker rm -f $(docker ps -a -q)
- Delete All Volumes:    docker volume rm $(docker volume ls -q)



## Deploy Mysql Volume With Application
docker run -d --name mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=True mysql

## Check the config to find the "VOLUME PATH" and "VOLUME MOUNT"
- The mount has the volume contiguration with the Destination Data Path
- The Source Data location as well from the Host

## List and Inspect Volume
docker volume ls
docker volume inspect 3eae69113dcf9ed6e00b7f8c967338b88b8c3025ae0f3c3830bbb6b6fa0d31f8
