@echo off
:Main
REM REM 设置cmd输出编码为UTF8
CHCP 65001 > %TEMP%/nil
IF not "%INIT%"=="true" (CALL:SetPath)
IF exist "run.bat" (CALL:SetDir)
GOTO:EOF

:SetPath
REM PATH 配置
SET PATH_PHP=C:/phpStudy/php/php-7.0.12-nts/
SET PATH_MYSQL=C:/phpStudy/MySQL/bin/
SET PATH_APACHE=C:/phpStudy/Apache/bin/ 
SET PATH_NODE=%appdata%/npm
SET PATH=%~dp0;%PATH_PHP%;%PATH_MYSQL%;%PATH_APACHE%;%PATH_NODE%;%PATH% 
SET INIT=true
GOTO:EOF

:SetDir
REM 默认目录
cd %~dp0/..
start /B
GOTO:EOF
