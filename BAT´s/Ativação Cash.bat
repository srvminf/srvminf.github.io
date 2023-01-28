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

slmgr %computador% -ipk FCWKG-48K2D-TKTYC-8CGJ8-P66CF 
slmgr %computador% -ATO   

@echo \\\\\\\\\\\\\MICRO ATIVADO\\\\\\\\\\\\\\\\\
pause
