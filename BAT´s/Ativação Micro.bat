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
slmgr %computador% -cpky 

slmgr %computador% -ipk 33PXH-7Y6KF-2VJC9-XBBR8-HVTHH 
slmgr %computador% -ATO   

@echo \\\\\\\\\\\\\MICRO ATIVADO\\\\\\\\\\\\\\\\\
pause
