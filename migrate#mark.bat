@echo off
call cmd.bat
cd ..
@echo input migrate name: 
@set /P input= " > " 
php artisan make:migration %input% 
pause
