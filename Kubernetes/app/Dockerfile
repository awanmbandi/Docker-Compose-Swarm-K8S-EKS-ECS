# Use the official nginx image as the base image
FROM nginx:alpine

# Copy the index.html file to the nginx web server directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the web server
EXPOSE 80

# Start nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]