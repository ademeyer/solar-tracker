# Use official Nginx image as base
FROM nginx:alpine

# Install curl for health check
RUN apk add --no-cache curl

# Copy webpage files
COPY index.html /usr/share/nginx/html/
COPY dish_position.txt /usr/share/nginx/html/
# COPY style.css /usr/share/nginx/html/  # If you have separate CSS
# COPY script.js /usr/share/nginx/html/  # If you have separate JS

# Configure Nginx
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d/

# Create a health check
HEALTHCHECK --interval=30s --timeout=3s \
  CMD curl -f http://localhost/ || exit 1

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

