@echo off
cls
c:
cd\

@echo.
set /p computador= Digite o NOME ou IP do seu computador: 
@echo.
@echo.
cd\
c:
slmgr %computador% -cpky start iexplorer.exe

  

@echo 
pause
