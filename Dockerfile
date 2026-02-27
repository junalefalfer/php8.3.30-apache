FROM php:8.3.30-apache

# Instalar extensiones necesarias para Laravel
RUN apt-get update && apt-get install -y \
    libzip-dev zip unzip git libpng-dev libonig-dev libxml2-dev \
    && docker-php-ext-install pdo_mysql mbstring zip exif pcntl bcmath gd zip soap \
    && docker-php-ext-enable soap
RUN a2enmod rewrite
# Configurar Apache para Laravel
ENV APACHE_DOCUMENT_ROOT=/var/www/html/public
RUN sed -i '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf
RUN sed -ri -e "s!/var/www/html!${APACHE_DOCUMENT_ROOT}!g" /etc/apache2/sites-available/*.conf
RUN sed -ri -e "s!/var/www/!${APACHE_DOCUMENT_ROOT}/!g" /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
