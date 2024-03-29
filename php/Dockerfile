From php:7.4.33-fpm 


# RUN chmod -R 777 /var/www/html/files


# Install required extensions
RUN apt-get update && \
    apt-get install -y libzip-dev && \
    docker-php-ext-install mysqli zip

