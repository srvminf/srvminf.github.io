@echo off
cls
c:
cd\
@echo.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@echo.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@echo @@@@@ Desligar remoto   @@@@@
@echo.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@echo.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@


set /p computador= Digite o NOME ou IP do seu computador: 


shutdown /r /f /t 00 /m \\%computador%



pause

