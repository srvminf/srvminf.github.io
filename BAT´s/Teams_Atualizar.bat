@echo off
@echo.
@echo.
@echo.
@echo ##############################
@echo ##############################
@echo #######               ########
@echo #######     TEAMS     ########
@echo #######   ATUALIZAR   ########
@echo #######               ########
@echo ##############################
@echo ##############################
@echo.
@echo.
@echo.

echo Copiando o TEAMS...
	robocopy /S "\\G11mscp28\utils\Teams" "C:\Suporte\Teams"
timeout 1 > NUL
echo Instalando o TEAMS...
cd C:\Suporte\Teams
Teams_windows_x64.exe


@echo.
@echo.
@echo.

exit