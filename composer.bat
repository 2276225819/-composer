@REM 代码上色
@call %~dp0/run.bat
@start /B /W php -n -d extension=%PATH_PHP%/ext/php_openssl.dll %~dp0/bin/composer.phar %1 %2 %3 %4 %5 %6 %7 %8 %9