:LOOP
@echo input migrate name: 
@set /P input= " > " 
php.lnk ..\artisan make:migration %input%
pause
goto LOOP