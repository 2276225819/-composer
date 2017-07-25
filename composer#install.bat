@call %~dp0/run.bat
REM if exist "composer.lock" (goto:DELETE) else (goto:THEN)
REM :DELETE
REM set /p choice=delete composer.lock(Y/N)
REM if "%choice%"=="Y" (del "composer.lock" )
REM if "%choice%"=="y" (del "composer.lock" )
REM :THEN
del "composer.lock"
call composer install
pause
