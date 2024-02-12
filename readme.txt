https://github.com/sebasong23/simpledockerlamp/tree/master

laravel serve
php artisan serve --host=0.0.0.0

env config
DB_HOST=mysqlHost

composer installation
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'edb40769019ccf227279e3bdd1f5b2e9950eb000c3233ee85148944e555d97be3ea4f40c3c2fe73b22f875385f6a5155') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

sudo mv composer.phar /usr/local/bin/composer


laravel installation
composer create-project laravel/laravel example-app

check
php -v
composer --version

cd appfolder
php artisan

localhost 
localhost:8000

phpmyadmin
localhost:5000

should in main branch