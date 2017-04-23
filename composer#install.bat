@call %~dp0/run.bat
if exist "composer.lock" (goto:DELETE) else (goto:THEN)
:DELETE
set /p choice=delete composer.lock(Y/N)
if "%choice%"=="Y" (del "composer.lock" )
if "%choice%"=="y" (del "composer.lock" )
:THEN
call composer install
pause
