@echo off
echo Parando o Outlook...
taskkill /IM Outlook.exe /f
timeout 5 > NUL
echo Inciando Limpeza do perfil...
start Outlook.exe /cleanprofile
timeout 5 > NUL
echo Limpando a janela
start Outlook.exe /resetnavpane
timeout 5 > NUL
echo Iniciando Outlook, favor inicie seu outlook e crie um novo perfil.
pause
saindo
timeout 3 > NUL