@echo off
REM Desenvolvido por Carlos Rogerio - Central de orienta��o N�vel 2.
echo Inicializar Active Directory
echo.
set /p mat= Digite Matricula F7:
cd/
runas /user:capgv\%mat% "mmc %windir%\system32\dsa.msc"
echo INCIANDO ACTIVE DIRECTORY
exit