@echo off 
call composer#install.bat  
cd ..
php artisan migrate:refresh 
php artisan db:seed
pause 