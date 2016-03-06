FROM php:7.0.3-apache

RUN apt-get update && apt-get upgrade -y && apt-get install wget unzip apt-utils zip -y
RUN wget http://release.larsjung.de/h5ai/h5ai-0.28.1.zip
RUN unzip h5ai-0.28.1.zip
RUN rm h5ai-0.28.1.zip
RUN chmod 777 -R _h5ai

COPY apache2.conf /etc/apache2/apache2.conf
COPY . /var/www/html/

EXPOSE 80
