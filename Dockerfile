FROM php:7-fpm
MAINTAINER Kouki Saito <dan.addr.skd@gmail.com>

RUN groupadd -r phpuser && useradd -r -g phpuser phpuser
COPY . /var/www/html
WORKDIR /var/www/html

USER phpuser

