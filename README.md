# ARTBackend


## Composer Setup
Follow the installation Guide for Composer on Windows from the Website given below
http://webdevzoom.com/how-to-install-composer-on-windows/

## Project setup
Setup the Project from Git by cloning the Repo by running the command below
```
git clone <link to repo>
```

### Database Setup
Create your Database in phpmyadmin Xampp.
Import the database in the Data folder of the Project Root( Disable foreign Keys )

### Laravel and Dependency Setup
Install dependencies for the Project by running the following command in the Project Root folder
```
composer install
``` 
### Project Configuration and Dependency Setup
Copy the .env file in the data folder of the project to the root.
Open it and put the details of the DB. Make sure the name matches the one you created
Run the following command
```
php artisan config:cache
``` 
### Run the Server
```
php run serve
```
### Refererences
Use the following link to access an article on setting up a Laravel Repository
https://devmarketer.io/learn/setup-laravel-project-cloned-github-com/
