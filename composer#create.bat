@echo input migrate name: 
@set /P input=" > " 
php.lnk composer.phar create-project %input% --prefer-dist --repository-url https://packagist.phpcomposer.com temp
for /D %%i in (temp\*) do (move %%i ..)
move temp\* ..
rd temp
php.lnk composer.phar config repositories.packagist composer "https://packagist.phpcomposer.com" -d ..
composer#install.bat
pause
