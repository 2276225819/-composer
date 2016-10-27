@call set_path.bat  
@if exist "composer.lock" (goto:DEL) else (goto:THEN)
:DEL
@set /p choice=delete composer.lock(Y/N)
@if "%choice%"=="Y" (del "composer.lock" )
@if "%choice%"=="y" (del "composer.lock" )
:THEN
@findstr repositories composer.json>nul||php %self%/composer.phar config repositories.packagist composer "https://packagist.phpcomposer.com"
php %self%/composer.phar install 
pause