# Use the official PHP Apache image (no MySQL extensions needed)
FROM php:8.2-apache

# Copy all project files to Apache's web root
COPY . /var/www/html/

# Set permissions (optional, helps avoid file permission issues)
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 (default for Apache)
EXPOSE 80
