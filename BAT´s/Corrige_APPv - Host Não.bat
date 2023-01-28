@echo off


echo Digie o nome do micro:

@set /p maquina=

echo Digie o codigo da unidade:
@set /p codigo=

REG ADD \\%maquina%\HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\SoftGrid\4.5\Client\Configuration /v ApplicationSourceRoot /d RTSP://S3DCAG%codigo%.agencias.intra.bnb:554 /t REG_SZ /f


pause