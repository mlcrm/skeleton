FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    libicu-dev \
    && docker-php-ext-install intl \
    && docker-php-ext-install pdo_mysql \
    && usermod -u 1000 www-data

RUN docker-php-ext-enable opcache intl

COPY php.ini "$PHP_INI_DIR/php.ini"

WORKDIR /app