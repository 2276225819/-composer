@echo off
call cmd.bat
start /B php composer.phar update -d ..  
pause >> nil
