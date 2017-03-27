@if exist "%~dp0/cmd.bat" (call %~dp0/cmd.bat) else (goto:EOF) 
@echo input port:
@set /P port=" > "  
:LOOP
@cls
@if exist "artisan" ( php artisan serve --port %port% ) else ( php -Slocalhost:%port% )
@ping 127.0.0.1 -n 2 >nul   
goto :LOOP
