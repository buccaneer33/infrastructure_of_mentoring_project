FROM php:7.3.3-apache

RUN apt-get update && apt-get upgrade -y
RUN apt-get update && apt-get upgrade -y && docker-php-ext-install pdo pdo_mysql mysqli && a2enmod rewrite
WORKDIR /var/www/html/web

