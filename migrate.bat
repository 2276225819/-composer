@if exist "%~dp0/set_path.bat" (call %~dp0/set_path.bat) else (goto:EOF)
php artisan migrate
pause 