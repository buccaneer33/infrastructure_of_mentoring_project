FROM php:7.3.3-apache

RUN apt-get update && apt-get upgrade -y
RUN apt-get update && apt-get install vim -y
RUN apt-get update && apt-get upgrade -y && docker-php-ext-install pdo pdo_mysql mysqli && a2enmod rewrite
RUN apt-get install -y \
        libzip-dev \
        zip \
  && docker-php-ext-configure zip --with-libzip \
  && docker-php-ext-install zip
WORKDIR /var/www/html/web

