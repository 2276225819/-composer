@call set_path.bat   
@echo input migrate name: 
@set /P input= " > " 
php artisan make:migration %input% 
pause
