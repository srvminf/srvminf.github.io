@echo off
@echo.
@echo    ***********************************************
@echo    ***                                         ***
@echo    ***   O PROCESSO DE CORRECAO DA LENTIDAO    ***
@echo    ***    DO EQUIPAMENTO ESTA EM ANDAMENTO     ***
@echo    ***           GENTILEZA AGUARDAR!           ***
@echo    ***                                         ***
@echo    ***********************************************
@echo.
@echo   CRIADO POR: Philippe Adams de Sousa Lima C017372
@echo.

@echo ---------------------------------------------------
@echo               Limpeza de disco iniciada...
@echo.---------------------------------------------------
@echo.

cleanmgr.exe /dC: \CLEANALL -h \SETUP

@echo.
@echo ---------------------------------------------------
@echo          Limpeza realizada com sucesso!
@echo.---------------------------------------------------
@echo.

@echo.---------------------------------------------------
@echo          Limpando arquivos temporarios...
@echo.---------------------------------------------------

DEL /S /Q /F "%TEMP%\*.*"

@echo.
@echo.---------------------------------------------------
@echo           Limpeza realizada com sucesso!
@echo.---------------------------------------------------
@echo.

defrag C: -h -f -u -v
defrag E: -h -f -u -v
defrag F: -h -f -u -v

@echo.
@echo.---------------------------------------------------
@echo          O equipamento será reiniciado...
@echo.---------------------------------------------------
@echo.

timeout 10 > NUL

Sleep, 10

shutdown /r /f /t 10