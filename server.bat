@echo off
call cmd.bat
echo input port:
set /P port=" > "  
cd ..
:LOOP
cls
if exist "artisan" ( php artisan serve --port %port% ) else ( php -Slocalhost:%port% )
ping 127.0.0.1 -n 2 >nul   
goto :LOOP
