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

HEALTHCHECK --interval=12s --timeout=12s --start-period=30s \  
    CMD node healthcheck.js

CMD [ "node", "server.js" ]