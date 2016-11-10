@if exist "%~dp0/set_path.bat" (call %~dp0/set_path.bat) else (goto:EOF)
@echo input project name:
@set /P vendor=" > "
@echo input project version:
@set /P version=" > "  
php %self%/composer.phar create-project --no-install --repository-url https://packagist.phpcomposer.com  %vendor% temp %version% 
for /D %%i in (temp\*) do (move %%i .)
move temp\* .
rd temp
@call %self%/composer#install.bat 
pause
pause
pause
