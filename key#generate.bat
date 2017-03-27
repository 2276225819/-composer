@if exist "%~dp0/cmd.bat" (call %~dp0/cmd.bat) else (goto:EOF)
@echo input project name: 
php artisan key:generate
pause 