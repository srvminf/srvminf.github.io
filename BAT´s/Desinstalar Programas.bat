@echo off

echo Destino:
@set /p destino=

wmic /node:%destino% product get name, version

echo Programa:
@set /p programa=

wmic /node:%destino% product where name="%programa%" call uninstall

pause
exit