@call set_path.bat   
@echo input port:
@set /P port=" > "  
:LOOP
cls
php artisan serve --port %port%
pause
goto :LOOP
