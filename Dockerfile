FROM php:7.4-fpm

RUN chown -R www-data:www-data .
RUN apt-get update && apt-get install -y
RUN apt install libzip-dev zlib1g-dev libcurl4-openssl-dev git -y

RUN docker-php-ext-install pdo pdo_mysql zip curl
RUN curl -sS https://getcomposer.org/installer | php -- \
--install-dir=/usr/bin --filename=composer
