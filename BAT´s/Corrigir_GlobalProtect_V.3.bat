:inicio
@echo off

cls
CHCP 65001 >NUL
echo. ----------------------------------------------------
echo .....................................................
echo .....................................................
echo ...Script para resolver problemas no Global Protect..
echo .........Criado por Gleriston Sampaio................
echo .....................................................
echo .....................................................

echo   Menu Principal

echo. ----------------------------------------------------

echo  1 - Executar Verificação Completa

echo. 2 - Resetar Somente o Global Protect

echo. 3 - Verificar atualizações do Windows

echo  4 - Atualizar o Symantec

echo  5 - Baixar e Instalar Global Protect

echo  0 - SAIR

echo. ---------------------------

set /p Comando= Digite uma Opcao :

if "%Comando%" equ "1" (goto:op1)

if "%Comando%" equ "2" (goto:op2)

if "%Comando%" equ "3" (goto:op3)

if "%Comando%" equ "4" (goto:op4)

if "%Comando%" equ "5" (goto:op5)

if "%Comando%" equ "0" (goto:exit)

:op1

echo.
echo Procurando atualizações do Windows...

timeout 10 > NUL
echo Executando Windows Update...
net start "Windows Update"
timeout 10 > NUL

echo.

echo Aplicando atualizações do Symantec...


"C:\Suporte\ATUALIZACAO_SEP.exe" /q

echo Atualizando o WindowsDefender...
cd %ProgramFiles%\Windows Defender
MpCmdRun.exe -removedefinitions -dynamicsignatures
MpCmdRun.exe -SignatureUpdate

echo Procurando ameaças no computador com WindowsDefender...

	"C:\Program Files\Windows Defender\MpCmdRun.exe" -scan

timeout 10 > NUL

echo Atualizando Symantec Antivirus...

cd "C:\Program Files (x86)\Symantec\Symantec Endpoint Protection\"
SepLiveUpdate.exe
timeout 10 > NUL

echo Executando Symantec Antivirus...
cd "C:\Program Files (x86)\Symantec\Symantec Endpoint Protection\"
DoScan.exe /C


timeout 30 > NUL
 
echo.
echo As Atualizações foram aplicadas no seu computador!

:op2

echo Resetando Somente o Global Protect
echo.

taskkill /im PanGPA.exe /f
sc stop PanGPS
rem sc config PanGPS start= demand
rem pause
timeout 10 > NUL

echo Tentando reconectar ao Global Protect
sc start PanGPS
Sleep, 1000

pause

goto:inicio


:ERRO
echo.
echo.
echo.
echo Ver Global Protect.
timeout 5
echo.

goto:inicio



:op3

echo Verificando Atualizações...

Reg Delete "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f
Reg Delete "HKEY_CURRENT_USER\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f

net stop bits
net stop wuauserv
net stop appidsvc
net stop cryptsvc

Ren %systemroot%\SoftwareDistribution SoftwareDistribution.bak
Ren %systemroot%\system32\catroot2 catroot2.bak

netsh winsock reset

netsh winhttp reset proxy

net start bits
net start wuauserv
net start appidsvc
net start cryptsvc
net start "Windows Update"

wuauclt detectnow

wuauclt reportnow

pause

goto:inicio

:op4

echo Baixando atualizações do Symantec...

bitsadmin /transfer mydownloadjob  /download /priority normal http://10.6.0.30:8014/secars/HI/ATUALIZACAO_SEP.exe C:\Suporte\ATUALIZACAO_SEP.exe


echo Aplicando atualizações do Symantec...


"C:\Suporte\ATUALIZACAO_SEP.exe" /q

cd "C:\Program Files (x86)\Symantec\Symantec Endpoint Protection\"
SepLiveUpdate.exe
timeout 10 > NUL
cd "C:\Program Files (x86)\Symantec\Symantec Endpoint Protection\"
DoScan.exe /C

pause

goto:inicio

:op5

echo Baixando Global Protect...

bitsadmin /transfer mydownloadjob /download /priority normal https://ars.bnb.gov.br/global-protect/msi/GlobalProtect64.msi C:\Suporte\GlobalProtect64.msi

echo Instalando Global Protect...

"C:\Suporte\GlobalProtect64.msi" /q

pause

goto:inicio

:exit

exit




 

goto END

 

:END