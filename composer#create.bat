@call %~dp0/run.bat
@call %~dp0/composer#config.bat
echo input project name:
set /P vendor=" > "
echo input project version:
set /P version=" > "  
echo create-project: %vendor% %version%  
call composer create-project %vendor% temp %version% 
for /D %%i in (temp\*) do (move %%i .)
move temp\* .
rd temp 
pause
