@ECHO OFF
REM 
REM BANCO DO NORDESTE DO BRASIL
REM LOGON SCRIPT
REM
REM ****************************************************
REM * Criado/Ajustado em 16/11/2011 por Werlon Marques *
REM ****************************************************

if not exist %LOGONSERVER%\netlogon\BNORD\KIX32.exe goto SAIR

%LOGONSERVER%\netlogon\BNORD\KIX32.EXE %LOGONSERVER%\netlogon\BNORD\LSCRIPT.KIX

:SAIR
EXIT