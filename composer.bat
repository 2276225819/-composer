@REM 代码上色
php %~dp0/bin/gg.php begin
@start /B /W php -c %~dp0/bin/php.ini %~dp0/bin/composer.phar %1 %2 %3 %4 %5 %6 %7 %8 %9
php %~dp0/bin/gg.php end