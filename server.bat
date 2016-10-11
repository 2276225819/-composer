@call set_path.bat   
@echo input port:
@set /P port=" > " 
php artisan serve --port %port%
pause

