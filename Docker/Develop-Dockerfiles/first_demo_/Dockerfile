# Use the official nginx image optimized for static sites
FROM nginx:stable-alpine

# Remove default nginx welcome page (optional) and copy our site content
RUN rm -rf /usr/share/nginx/html/*

# Copy site files into nginx's html folder
COPY ./index.html /usr/share/nginx/html/index.html

# Use a minimal nginx config to ensure index.html is served from root
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 to be able to access the site
EXPOSE 80

# Default CMD from nginx image will start nginx in the foreground
# (no need to override)
