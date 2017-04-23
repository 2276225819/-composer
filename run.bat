@echo off
if "%LOCK%"=="true" (GOTO:END)
set PATH=C:\phpstudy\php\php-7.0.12-nts\;%PATH%
set PATH=C:\phpStudy\MySQL\bin;%PATH%
set PATH=C:\phpStudy\Apache\bin;%PATH%   
set PATH=%~dp0;%PATH%
CHCP 65001 > %TEMP%/nil
cd %~dp0/.. 
SET LOCK=true
set fname=%0  
if "%fname:~-10,7%"=="run.bat" (GOTO:THEN) else (GOTO:END)
:THEN   
start /B 
:END  
