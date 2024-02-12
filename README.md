# simpledockerlamp

This is a simple docker-compose file to create a LAMP stack. It uses the official images for Apache, MySQL and PHP.
I need a quick way to setup a LAMP and run laravel.

Requirements:
- Docker

## How to use
1. Install Docker, Start Docker

2. Clone this repository from https://github.com/sebasong23/simpledockerlamp/tree/master
git clone docker-compose -f docker-compose.yml up docker   #preferable to use c:/docker folder
3. CD to folder and 
 Run 'docker-compose -f docker-compose.yml up'
 OR 
 Run run.bat
 Will download lamp docker required files
4. Test application working by 
    - Open browser and type http://localhost:
    - You should see working html
    - Open browser and type http://localhost:5000
    - You should see phpmyadmin page

5. To access the container, run the following command:
   docker exec -it docker-web-server8-1 bash or it.bat

6. Test the php version by running the following command:
   php -v

7. Use linux command to install composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'edb40769019ccf227279e3bdd1f5b2e9950eb000c3233ee85148944e555d97be3ea4f40c3c2fe73b22f875385f6a5155') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

8. Test the composer version by running the following command:
   composer --version

9. Install laravel by running the following command:

composer create-project laravel/laravel mylaravel

10. Test the laravel version by running the following command:
    php artisan --version

11. Test the laravel application by running the following command:
    php artisan serve --host=0.0.0.0  (without 0.0.0.0 it will not work)

12. Open browser and type http://localhost:8000
    You should see laravel welcome page

13. Configure the .env file in the mylaravel folder to connect to the database. Use the following settings: 
    These setting are our docker-compose.yml file, DB_HOSt must point to our container mysqlHost name
    DB_HOST=mysqlHost
    DB_DATABASE=thisdb
    DB_USERNAME=user
    DB_PASSWORD=secret

14. Run the following command to create the database:
    php artisan migrate

15. All good, you can now start developing your laravel application.

16. To stop the containers, run Ctrl C on the terminal where you ran the docker-compose up command or run.bat command.