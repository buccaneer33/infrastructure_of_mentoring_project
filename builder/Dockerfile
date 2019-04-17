#FROM nginx
FROM php:7.3.3-apache

RUN apt-get update && apt-get install sudo 
RUN apt-get update && apt-get install vim -y
RUN apt-get install -y \
        libzip-dev \
        zip \
  && docker-php-ext-configure zip --with-libzip \
  && docker-php-ext-install zip
RUN apt-get update && apt-get -y upgrade && apt-get install curl -y && curl -sL https://deb.nodesource.com/setup_8.x | bash && apt-get install nodejs -y
RUN apt-get update && apt-get install -y git
RUN npm install webpack -g && npm i -g @angular/cli@latest
RUN apt-get update && apt-get install -y --no-install-recommends git zip
RUN curl -sS https://getcomposer.org/installer | php -- \
        --filename=composer \
        --install-dir=/usr/local/bin && \
        echo "alias composer='composer'" >> /root/.bashrc && \
        composer

RUN docker-php-ext-install pdo_mysql

ARG REPO_FOLDER
ARG FRONT_GIT_REPO
ARG ADMIN_GIT_REPO
ARG BACK_GIT_REPO


RUN mkdir $REPO_FOLDER
#COPY /backend/start.sh $REPO_FOLDER
COPY /runtime $REPO_FOLDER
COPY /builder/scripts $REPO_FOLDER/scripts
#RUN sudo sh $REPO_FOLDER/runtime.sh $REPO_FOLDER $FRONT_GIT_REPO $ADMIN_GIT_REPO $BACK_GIT_REPO
RUN sh $REPO_FOLDER/runtime.sh $REPO_FOLDER $ADMIN_GIT_REPO $FRONT_GIT_REPO $BACK_GIT_REPO
