# Use the official Nginx image as a base
FROM nginx:latest

# Remove default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file to the Nginx container
COPY index.html /usr/share/nginx/html/

# Expose port 80 for web access
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

