@set /P vendor=input project name:
@set /P version=input project version:
php.lnk composer.phar create-project --repository-url https://packagist.phpcomposer.com  %vendor% temp %version%
for /D %%i in (temp\*) do (move %%i ..)
move temp\* ..
rd temp
php.lnk composer.phar config repositories.packagist composer "https://packagist.phpcomposer.com" -d ..
composer#install.bat
pause
