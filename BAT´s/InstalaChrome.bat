@echo off

echo .....................................................
echo .....................................................
echo ........Script para instalar o Chrome................
echo .........Criado por Gleriston Sampaio................
echo .....................................................
echo .....................................................

echo Fazendo limpeza e preparando o computador...
timeout 3 > NUL
TASKKILL  /F /IM GoogleUpdate.exe
TASKKILL  /F /IM GoogleCrashHandler.exe
TASKKILL  /F /IM GoogleCrashHandler64.exe
TASKKILL  /F /IM GoogleUpdateBroker.exe
TASKKILL  /F /IM GoogleUpdateCore.exe
TASKKILL  /F /IM GoogleUpdateOnDemand.exe
TASKKILL  /F /IM GoogleUpdateSetup.exe
TASKKILL  /F /IM GoogleUpdateWebPlugin.exe
TASKKILL  /F /IM chrome.exe

REG DELETE HKEY_CURRENT_USER\Software\Policies\Google /F
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Google /F
cls

echo Problemas resolvidos...

echo Instalando Google Chrome...

start /wait /i ChromeStandaloneSetup64.exe 
cd..
cd C:\Windows
gpupdate /force

