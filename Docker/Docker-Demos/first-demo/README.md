
### Build application/Image
docker build -t .
docker build -t feedback-node:v1 .


### Run application/Image
docker run -p 3000:80 -d --name feedback-app --rm feedback-node


### 