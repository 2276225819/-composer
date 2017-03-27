@if exist "%~dp0/cmd.bat" (call %~dp0/cmd.bat) else (goto:EOF)
@echo input migrate name: 
@set /P input= " > " 
php artisan make:migration %input% 
pause
