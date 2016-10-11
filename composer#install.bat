@call set_path.bat  
del "composer.lock"
php %self%/composer.phar install 
pause