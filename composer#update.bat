@if exist "%~dp0/cmd.bat" (call %~dp0/cmd.bat) else (goto:EOF)
@php %self%/composer.phar update 
