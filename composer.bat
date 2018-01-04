@call %~dp0/init.bat
@php -n -d extension=%PATH_PHP%/ext/php_openssl.dll %~dp0/bin/composer.phar %1 %2 %3 %4 %5 %6 %7 %8 %9