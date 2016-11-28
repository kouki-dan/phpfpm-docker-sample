# phpfpm-docker-sample
A sample for php-fpm and nginx using Docker.
If you need just a sample of phpfpm, use [this `phpfpm` tag](https://github.com/kouki-dan/phpfpm-or-laravel-docker-sample/tree/phpfpm).
This is a laravel on docker sample code.

# How to use

1. Build: `docker-compose build`
1. Composer: `docker-compose run php composer install`
1. Migration: `docker-compose run php php artisan migrate`
1. Generate Key: `docker-compose run php php artisan key:generate`
1. `docker-compose up`
1. Open "http://localhost:8080/" in your browser.

