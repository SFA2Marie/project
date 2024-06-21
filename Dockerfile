FROM yiisoftware/yii2-php:8.2-apache
RUN docker-php-ext-install mysqli pdo pdo_mysql
WORKDIR /app
COPY basic/ ./
RUN composer update
RUN composer install