@if exist "%~dp0/set_path.bat" (call %~dp0/set_path.bat) else (goto:EOF)
@echo input project name: 
php artisan key:generate
pause 