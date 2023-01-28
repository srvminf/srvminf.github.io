@echo off
echo Parando o Outlook...
taskkill /IM Outlook.exe /f
timeout 5 > NUL
echo Limpando a janela
start Outlook.exe /resetnavpane
timeout 5 > NUL
echo Iniciando o Outlook!
pause
saindo
timeout 3 > NUL