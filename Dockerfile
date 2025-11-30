# Simple Nginx image to serve static files from dist/

FROM nginx:alpine

# Nginx serves files from /usr/share/nginx/html by default
WORKDIR /usr/share/nginx/html

# Remove default Nginx page
RUN rm -rf ./*

# Copy our pre-built static app from dist/ into Nginx html folder
COPY dist/ .

# Nginx listens on port 80 inside the container
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
