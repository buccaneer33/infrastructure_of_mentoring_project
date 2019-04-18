FROM php:7.3.3-apache

RUN apt-get update && apt-get upgrade -y
RUN apt-get update && apt-get install vim -y
RUN apt-get update && apt-get upgrade -y && docker-php-ext-install pdo pdo_mysql mysqli && a2enmod rewrite
RUN apt-get install -y \
        libzip-dev \
        zip \
  && docker-php-ext-configure zip --with-libzip \
  && docker-php-ext-install zip
RUN apt-get update && apt-get install -y --no-install-recommends git zip

#COPY /backend/start.sh /var/www/html/start.sh
#RUN chmod 755 /var/www/html/start.sh

WORKDIR /var/www/html/web
#CMD ["ls", "-la"]
CMD /var/www/html/web/start.sh
#CMD ["sh php bin/console doctrine:database:create --if-not-exists"]
#CMD ["php", "bin/console doctrine:database:create --if-not-exists"]