@call %~dp0/init.bat
@php -n -d extension=%PATH_PHP%/ext/php_openssl.dll %~dp0/bin/composer.phar %*