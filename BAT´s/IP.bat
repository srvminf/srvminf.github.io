@echo off
rem Arquivo Criado por França e Alenilson para a verificação de IP e Nome de estações positivo.
title Consulta IP
color 0e
echo. > C:\Suporte\IP.txt
ECHO    USUARIO: %USERPROFILE% >> C:\Suporte\IP.txt
echo. >> C:\Suporte\IP.txt

net user %username% /domain | find "Pasta base" > C:\Suporte\ip.tmp
FOR /F "tokens=1 delims=:" %%I in (C:\Suporte\ip.tmp) do SET IP=%%I
del C:\Suporte\ip.tmp
set PB=%IP:~36%

echo    Perfil M: %PB%  >> C:\Suporte\IP.txt
ECHO. >> C:\Suporte\IP.txt
echo    Servidor_Logon: %LOGONSERVER% >> C:\Suporte\IP.txt
echo. >> C:\Suporte\IP.txt
echo    ESTACAO: %computername%.%USERDNSDOMAIN% >> C:\Suporte\IP.txt
echo. >> C:\Suporte\IP.txt
ipconfig | find "IPv4" >> C:\Suporte\IP.txt
echo. >> C:\Suporte\IP.txt
ipconfig | find "IPv6" >> C:\Suporte\IP.txt
notepad "C:\Suporte\IP.txt"
exit