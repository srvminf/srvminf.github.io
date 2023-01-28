@echo off


cls
echo .....................................................
echo .....................................................
echo ...Script para resolver problemas no CITRIX..........
echo .........Criado por Gleriston Sampaio................
echo .....................................................
echo .....................................................

timeout 1 > NUL
echo Finalizado o CITRIX...
timeout 1 > NUL
taskkill /IM AuthManSvr.exe /f
taskkill /IM CtxWebBrowser.exe /f

echo CITRIX Finalizado

timeout 5 > NUL
echo Limpando o CITRIX...

DEL /S /Q /F "%Userprofile%\AppData\Local\Citrix\*.*"   
FOR /D %%d IN ("%Userprofile%\AppData\Local\Citrix\*.*") DO RD /S /Q "%%d" 


timeout 2 > NUL
echo Resetando o CITRIX...

"C:\Program Files (x86)\Citrix\ICA Client\SelfServicePlugin\CleanUp.exe" -cleanUser

timeout 3 > NUL

echo CITRIX Finalizado!
echo CITRIX Limpo!
echo CITRIX Iniciando!