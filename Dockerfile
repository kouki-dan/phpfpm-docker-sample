FROM php:7-fpm
MAINTAINER Kouki Saito <dan.addr.skd@gmail.com>

RUN apt-get update \
    && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng12-dev libmcrypt-dev git zip unzip\
    && docker-php-ext-install pdo_mysql mysqli mbstring gd iconv mcrypt \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer

RUN groupadd -r phpuser && useradd -r -g phpuser -m phpuser
COPY . /app
WORKDIR /app

RUN chmod -R 777 /app

USER phpuser

RUN composer install

