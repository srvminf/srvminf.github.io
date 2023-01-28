@echo off
@echo Resetando a sua rede...
ipconfig /renew
timeout 3
@echo Configurando o IP de rede...
ipconfig /release
timeout 3

ipconfig /release
ipconfig /renew

@echo Executando outras varreduras...
timeout 1
arp -d *
nbtstat -R
nbtstat -RR
ipconfig /flushdns
ipconfig /registerdns

@echo Atualizando...
GPUPDATE /FORCE
@echo.
@echo Rede configurada. Caso erro, desligar e religar o computador. 
@echo 
timeout 30