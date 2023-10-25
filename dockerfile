# Use an official Nginx runtime as the base image
FROM nginx:latest

# Copy your HTML and CSS files to the container
COPY index.html /usr/share/nginx/html/
COPY index.css /usr/share/nginx/html/

# Expose the port Nginx is listening on (default: 80)
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
