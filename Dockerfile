FROM ghcr.io/octobercms/runtime-prod:php85

WORKDIR /var/www/html

COPY . /var/www/html

RUN composer install \
    --no-dev \
    --optimize-autoloader \
    --no-interaction
