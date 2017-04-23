@echo off
if "%LOCK%"=="true" (GOTO:END)
REM PATH 配置
set PATH=C:\phpstudy\php\php-7.0.12-nts\;%PATH%
set PATH=C:\phpStudy\MySQL\bin;%PATH%
set PATH=C:\phpStudy\Apache\bin;%PATH%   
set PATH=%~dp0;%PATH%

REM 设置cmd输出编码为UTF8
CHCP 65001 > %TEMP%/nil
cd %~dp0/.. 
SET LOCK=true
set fname=%0  
if "%fname:~-10,7%"=="run.bat" (GOTO:THEN) else (GOTO:END)
:THEN   
start /B 
:END  
