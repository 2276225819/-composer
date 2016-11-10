@if exist "%~dp0/set_path.bat" (call %~dp0/set_path.bat) else (goto:EOF)
@echo input migrate name: 
@set /P input= " > " 
php artisan make:migration %input% 
pause
