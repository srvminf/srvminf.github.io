@echo off
@echo.
@echo.
@echo.
@echo ##############################
@echo ##############################
@echo #######               ########
@echo #######    FIREFOX    ########
@echo #######   ATUALIZAR   ########
@echo #######               ########
@echo ##############################
@echo ##############################
@echo.
@echo.
@echo.

echo Copiando o FIREFOX...
	robocopy /S "\\G11mscp28\utils\Navegadores" "C:\Suporte\Firefox"
timeout 1 > NUL
echo Instalando o FIREFOX...
cd C:\Suporte\Firefox
Firefox_Setup_109.0.exe


@echo.
@echo.
@echo.

exit