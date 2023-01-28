@echo off
REM  WMI Repair
Title Script de recuperacao WMI
net stop /y winmgmt
Sleep 5
REM Exclua os comentários abaixo no caso de execlusão e recriação do repositório
REM if exist %windir%\system32\wbem\repository.old rmdir /s /q %windir%\system32\wbem\repository.old
REM ren %windir%\system32\wbem\repository repository.old
Title Recompilacao de repositorio
regsvr32 /s %systemroot%\system32\scecli.dll
regsvr32 /s %systemroot%\system32\userenv.dll
for /f %%s in ('dir /b /s %windir%\system32\wbem\*.dll') do regsvr32 /s %%s
for /f %%s in ('dir /b /s %windir%\system32\wbem\*.mof') do mofcomp %%s
%windir%\system32\wbem\wmiprvse /regserverpower
Title Script finalizado
Exit