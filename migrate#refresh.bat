@call set_path.bat 
@call %self%/composer#install.bat 
pause
php artisan migrate:refresh 
php artisan db:seed
pause 