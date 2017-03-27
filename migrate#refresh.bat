@if exist "%~dp0/cmd.bat" (call %~dp0/cmd.bat) else (goto:EOF)
@call %self%/composer#install.bat 
pause
php artisan migrate:refresh 
php artisan db:seed
pause 