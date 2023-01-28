@echo off
echo Parando os Processos da impressora (Spooler)
net stop spooler
reg add HKLM\SYSTEM\CurrentControlSet\Control\Print /v DnsOnWire /t REG_DWORD /d
reg add HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Print RpcAuthn LevelPrivacyEnabled
pause
echo Inciando Limpeza...
cd %systemroot%\system32\spool\PRINTERS
pause
del /f /s *.shd
pause
del /f /s *.spl
pause
echo Iniciando os Processos da impressora (Spooler)
net start spooler
pause
exit