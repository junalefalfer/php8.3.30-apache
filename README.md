# PHP 8.3.30 | APACHE

## Descripción

PHP8.3.30-apache es una imagen base actualizada y listo para correr proyectos de laravel.

### Características Principales

- **Actualizacion**: apt-get update
- **Instalaciond de librerias**: apt-get install -y libzip-dev zip unzip git libpng-dev libonig-dev libxml2-dev
- **Mysql Client y SOAP**: docker-php-ext-install pdo_mysql mbstring zip exif pcntl bcmath gd zip soap
- **Habilitacion de SOAP**: docker-php-ext-enable soap

## Requisitos del Sistema

- **PHP**: >= 8.3.30
