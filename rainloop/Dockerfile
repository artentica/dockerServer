FROM php:7.0.3-apache

WORKDIR /var/www/html

RUN apt-get update && apt-get upgrade -y && apt-get install wget unzip zip -y && curl -s http://repository.rainloop.net/installer.php | php

EXPOSE 80
