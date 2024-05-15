# Use nginx as the base image
FROM nginx:latest

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy the website code from the GitHub repository to the nginx document root
COPY . /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Command to start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]