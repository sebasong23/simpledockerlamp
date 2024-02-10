FROM php:8.1.27-apache
RUN apt-get update && apt-get install -y \
        git \
        libzip-dev \
        zip \
          libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
  && docker-php-ext-install zip \
    && docker-php-ext-install gd  

RUN docker-php-ext-install mysqli pdo pdo_mysql 
RUN a2enmod rewrite