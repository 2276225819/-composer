@echo off
call cmd.bat
if exist "..\composer.lock" (goto:DELETE) else (goto:THEN)
:DELETE
set /p choice=delete composer.lock(Y/N)
if "%choice%"=="Y" (del "..\composer.lock" )
if "%choice%"=="y" (del "..\composer.lock" )
:THEN
findstr repositories ..\composer.json>nul||php composer.phar config repositories.packagist composer "https://packagist.phpcomposer.com"
start /B php composer.phar install -d ..
pause >> nil