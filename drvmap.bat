@echo off
copy "%~dp0\Capcom.sys" "%WINDIR%\system32\drivers\Capcom.sys"
sc create Capcom binPath= system32\drivers\Capcom.sys type= kernel
sc start Capcom
%~dp0drvmap.exe %~dp0\Raufen.sys
PING localhost -n 2 >NUL
sc stop Capcom
sc delete Capcom
del "%WINDIR%\system32\drivers\Capcom.sys"
PING localhost -n 2 >NUL
sc stop Capcom
sc delete Capcom
del "%WINDIR%\system32\drivers\Capcom.sys"
PING localhost -n 2 >NUL
%~dp0win5839.exe