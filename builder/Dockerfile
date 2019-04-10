FROM nginx
RUN apt-get update && apt-get install sudo
RUN apt-get update && apt-get -y upgrade && apt-get install curl -y && curl -sL https://deb.nodesource.com/setup_8.x | bash && apt-get install nodejs -y
RUN apt-get update && apt-get install -y git
RUN npm install webpack -g && npm i -g @angular/cli@latest

ARG REPO_SHELL
ARG FRONT_GIT_REPO
ARG BACK_GIT_REPO
ARG ADMIN_GIT_REPO

RUN mkdir $REPO_SHELL
COPY /runtime $REPO_SHELL
COPY /builder/scripts $REPO_SHELL/scripts
RUN sudo sh $REPO_SHELL/runtime.sh $REPO_SHELL $FRONT_GIT_REPO $ADMIN_GIT_REPO $BACK_GIT_REPO 