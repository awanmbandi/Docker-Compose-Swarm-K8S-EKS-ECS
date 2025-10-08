Model Batch E-Commerce (Static HTML)
========================================

This project is a simple static e-commerce landing page served using Nginx in Docker.

Files Included
--------------
- index.html     - Static HTML page
- Dockerfile     - Dockerfile to build and run using Nginx
- nginx.conf     - Nginx configuration to serve index.html
- README.txt     - This file

How to Build and Run
--------------------
1. Build the Docker image:
   docker build -t modelbatch-store .

2. Run the container exposing it on port 80:
   docker run -d -p 80:80 --name modelbatch modelbatch-store

3. Visit in browser:
   http://localhost/

If port 80 is in use, change the host port, e.g. -p 8080:80
