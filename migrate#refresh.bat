@if exist "%~dp0/set_path.bat" (call %~dp0/set_path.bat) else (goto:EOF)
@call %self%/composer#install.bat 
pause
php artisan migrate:refresh 
php artisan db:seed
pause 