@echo off
cls
c:
cd\



set /p n_session= Digite a sessão: 
set /p servidor= Digite o servidor: 


reset session %n_session% /server:%servidor%



pause

