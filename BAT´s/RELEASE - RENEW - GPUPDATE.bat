@echo off

@echo off
@echo.
@echo #######################################
@echo #######################################
@echo #######                        ########
@echo #######      CORRIGIR IP       ########
@echo #######   Gleriston Sampaio    ########
@echo #######################################
@echo #######################################


cd C:\Windows\System32

netsh winsock reset

netsh int ip reset

ipconfig /flushdns

ipconfig /release

ipconfig /renew

echo.

gpupdate /force

echo.
echo REINICIE O MICRO PARA EFETIVACAO DOS PROCEDIMENTOS...

pause