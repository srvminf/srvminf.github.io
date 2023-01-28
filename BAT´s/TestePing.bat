@echo off
echo Destino:
echo.

@set /p destino=
echo.

echo Verificando ping...

ping "%destino%"
echo.

echo Verificando unidades de Rede...
echo.
net view "%destino%"
pause
exit