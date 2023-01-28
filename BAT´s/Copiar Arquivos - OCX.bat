@echo off
echo LISTA DE PROGRAMAS:
dir /b C:\Suporte\programs
echo.
echo Micro:
@set /p destino=
echo Arquivo:
@set /p arquivo=

robocopy "C:\Suporte\programs" "\\%destino%\c$\Windows\Downloaded Program Files" is "%arquivo%"
pause



