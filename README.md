# phpfpm-docker-sample
A sample for php-fpm and nginx using Docker.

# How to use

1. Install composer: `docker-compose run php composer install`
1. Migration: `docker-compose run php php artisan migrate`
1. Generate Key: `docker-compose run php php artisan key:generate`
1. `docker-compose up`
1. Open "http://localhost:8080/" in your browser.

