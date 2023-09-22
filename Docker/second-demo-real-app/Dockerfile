# using nodejs base image
FROM node:latest
#defining working directory
WORKDIR /app
# using the root user to execute the container image
USER root
# copying the nodejs dependnecy file
COPY package.json /app/
# installing npm for nodejs
RUN npm install
# copying all, applications files to the work directory
COPY . /app/
# exposing port number
EXPOSE 80
# executing web application
CMD [ "node", "/app/server.js" ]