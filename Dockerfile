# Use lightweight nginx image
FROM nginx:alpine

# Remove default nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy all website files into nginx html folder
COPY . /usr/share/nginx/html/

# Expose container port
EXPOSE 80

# Start nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

