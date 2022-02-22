FROM php:7.4-fpm

RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R www-data:www-data .
RUN apt-get update && apt-get install -y
RUN apt install git -y
