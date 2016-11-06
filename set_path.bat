@if defined SET_PATH goto :eof 
@set SET_PATH=defined 
cd %~dp0
@echo[set ws=createobject("wscript.shell")  >a.vbs 
@echo[set lnk=ws.CreateShortcut("%cd%/php.lnk"^) >>a.vbs  
@echo[wscript.echo(  left(lnk.TargetPath, len(lnk.TargetPath)-7 ) )  >>a.vbs 
@cscript //nologo a.vbs >b.vbs  
@set /p php=<b.vbs
@set path=%path%;%php%
@set self=%cd%
@del a.vbs
@del b.vbs   
cd ..