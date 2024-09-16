# Use the official PHP image with Apache
FROM php:7.4-apache

# Set working directory inside the container
WORKDIR /var/www/html

# Copy the PHP application code into the container
COPY ./website /var/www/html/

# Install any additional PHP extensions if needed
# RUN docker-php-ext-install pdo_mysql

# Expose port 80
EXPOSE 80

# Start Apache in the foreground
CMD ["apache2-foreground"]
