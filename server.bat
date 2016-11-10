@if exist "%~dp0/set_path.bat" (call %~dp0/set_path.bat) else (goto:EOF) 
@echo input port:
@set /P port=" > "  
:LOOP
cls
php artisan serve --port %port%
pause
goto :LOOP
