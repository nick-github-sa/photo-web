# Use the official Nginx image as a parent image
FROM nginx:alpine

# Copy the content of your website to the server directory
COPY ./html /usr/share/nginx/html

# Expose port 80
EXPOSE 80
