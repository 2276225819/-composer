@call set_path.bat  
del "composer.lock"
php %self%/composer.phar config repositories.0 composer "https://packagist.phpcomposer.com"
php %self%/composer.phar install 
pause