@set /P input=input project name:
php.lnk composer.phar create-project %input% --prefer-dist --repository-url https://packagist.phpcomposer.com temp
for /D %%i in (temp\*) do (move %%i ..)
move temp\* ..
rd temp
pause