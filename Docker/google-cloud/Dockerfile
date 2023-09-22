FROM node:14

WORKDIR /app

USER root

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

ENV application_name = client_feedback_app
ENV compliance       = nist

LABEL environment    = "development"
LABEL container_user = "root"

CMD [ "node", "server.js" ]