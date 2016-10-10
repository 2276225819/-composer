:LOOP
php.lnk composer.phar install -d ..
php.lnk ..\artisan migrate:refresh 
php.lnk ..\artisan db:seed
pause
goto LOOP