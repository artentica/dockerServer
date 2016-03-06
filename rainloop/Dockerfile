FROM php:7.0.3-apache

RUN apt-get update && apt-get upgrade -y && apt-get install wget unzip zip -y
RUN wget http://repository.rainloop.net/v2/webmail/rainloop-community-latest.zip
RUN unzip rainloop-community-latest.zip
RUN rm rainloop-community-latest.zip

COPY . /var/www/html/

RUN chmod -R 777 data

EXPOSE 80
