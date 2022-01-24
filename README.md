How to install
Download projek
git clone https://github.com/ardananjungkusuma/infokripto.git

install library
composer install

ubah nama file .env-example menjadi .env

Sesuaikan konfigurasi database di .env

Import .sql ke database
<!-- Lakukan migrasi database

php artisan migrate

Lakukan seeding untuk mengisi data di database
php artisan db:seed -->

Lakukan generate key
php artisan key:generate

Jalankan
php artisan serve
