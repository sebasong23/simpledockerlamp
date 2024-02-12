# simpledockerlamp (LAMP with Laravel) for Windows 10 or 11

This is a simple docker-compose file to create a LAMP stack with Laravel Support in Windows. It uses the official images for Apache, MySQL and PHP.
I need a quick way to setup a LAMP and run laravel.
Configuration and files all set in C:/docker folder

Requirements:
- Windows 10 or 11
- Git
- Docker
- C:\Docker folder
- Html in C:\Docker\html

Ports:
- 80: Apache
- 5000: phpmyadmin
- 8000: laravel
  
Installed docker images:
- 8.1.27-apache
- mysql:5.7.41


## How to use
1. Install Docker, Start Docker

2. Clone this repository from  https://github.com/sebasong23/simpledockerlamp.git in C: 
```
git clone https://github.com/sebasong23/simpledockerlamp.git c:/docker
```
#preferable to use c:/docker folder
3. CD to folder and 
 Run 
 ```
 docker-compose -f docker-compose.yml up
 ```
 OR 
 Run 
 ```
 run.bat
 ```

 Will download lamp docker required files
 
4. Test application working by 
    - Open browser and type http://localhost
    - You should see working html
    - Open browser and type http://localhost:5000
    - You should see phpmyadmin page

5. To access the container, run the following command:
  ```
   docker exec -it docker-web-server8-1 bash 
  ```
   or 
  ```
   it.bat
  ```

6. Test the php version by running the following command:
```
   php -v
```

7. Use linux command to install composer
```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'edb40769019ccf227279e3bdd1f5b2e9950eb000c3233ee85148944e555d97be3ea4f40c3c2fe73b22f875385f6a5155') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer
```

8. Test the composer version by running the following command:
```
   composer --version
```

9. Install laravel in you html public folder by running the following command:

```
cd /var/www/html
composer create-project laravel/laravel mylaravel
```

10. Test the laravel version by running the following command:
```
    php artisan --version
```

11. Test the laravel application by running the following command:
    ```
    php artisan serve --host=0.0.0.0
    ```  
    
    (without 0.0.0.0 it will not work)

12. Open browser and type http://localhost:8000
    You should see laravel welcome page

13. Configure the .env file in the mylaravel folder to connect to the database. Use the following settings: 
    These setting are our docker-compose.yml file, DB_HOSt must point to our container mysqlHost name
  ```
    DB_HOST=mysqlHost
    DB_DATABASE=thisdb
    DB_USERNAME=user
    DB_PASSWORD=secret
  ```

14. Run the following command to create the database:
```
    php artisan migrate
```

15. All good, you can now start developing your laravel application.

16. To stop the containers, run Ctrl C on the terminal where you ran the docker-compose up command or run.bat command.

Tested work well in Windows 11.
Official git repo is in https://github.com/sebasong23/simpledockerlamp


### Configuration

docker-compose yml contain port configuration 
For example to change port 80 to 81, or 8000 to 8001
 ports:
      - "81:80"
      - "8001:8000"

If your change the Dockerfile, you need to rebuild the image by running the following command:
``` 
docker-compose -f docker-compose.yml up --build
``` 
or

```
runbuild.bat
```

Happy Laravelling!
