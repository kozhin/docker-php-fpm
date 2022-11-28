FROM php:7-fpm-alpine

LABEL Description="PHP FPM 7 Docker image" \
      Maintainer="Konstantin Kozhin <1387510+kozhin@users.noreply.github.com>" \
      Vendor="" \
      Version="0.1.0"

# Install necessary packages
RUN docker-php-ext-install pdo pdo_mysql

# Install necessary packages
COPY config/php.ini /usr/local/etc/php/
