:do
del "..\composer.lock"
php.lnk composer.phar install -d ..
pause
goto do