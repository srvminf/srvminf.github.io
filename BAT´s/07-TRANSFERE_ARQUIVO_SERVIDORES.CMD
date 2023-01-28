@ECHO OFF
COLOR F8

:MENU
::mode con: lines=80 cols=80
dir C:\suporte\Softwares
echo.
set /p sof= DIGITE O NOME DO SOFTWARE:
echo.
set /p inicio_ip=DIGITE A FAIXA INICIAL DE IP:
echo.
set /p fim_ip=DIGITE A FAIXA FINAL DE IP:
echo.

set /p op=[1]Arquivo ou [2]Diretorio:

if %op% == 1 goto arquivo
if %op% == 2 goto diretorio

:arquivo

if %inicio_ip% LEQ 9 (
	for /l %%n in (%inicio_ip%,1,%fim_ip%) do (start "00%inicio_ip%" robocopy \\mc1405140\suporte\softwares \\S3DCAG00%%n\UTILS\Suporte is %sof%)
	) else (
	if %inicio_ip% LEQ 99 (
	for /l %%n in (%inicio_ip%,1,%fim_ip%) do (start "0%inicio_ip%" robocopy \\mc1405140\suporte\softwares \\S3DCAG0%%n\UTILS\Suporte is %sof%)
	) else (
	for /l %%n in (%inicio_ip%,1,%fim_ip%) do (start "%inicio_ip%" robocopy \\mc1405140\suporte\softwares \\S3DCAG%%n\UTILS\Suporte is %sof%)
	)
)


cls
goto MENU


:diretorio


if %inicio_ip% LEQ 9 (
	for /l %%n in (%inicio_ip%,1,%fim_ip%) do (start robocopy \\mc1405140\suporte\softwares\%sof% \\S3DCAG00%%n\UTILS\Suporte\%sof% /z /e)
	) else (
	if %inicio_ip% LEQ 99 (
	for /l %%n in (%inicio_ip%,1,%fim_ip%) do (start robocopy \\mc1405140\suporte\softwares\%sof% \\S3DCAG0%%n\UTILS\Suporte\%sof% /z /e)
	) else (
	for /l %%n in (%inicio_ip%,1,%fim_ip%) do (start robocopy \\mc1405140\suporte\softwares\%sof% \\S3DCAG%%n\UTILS\Suporte\%sof% /z /e)
	)
)

cls
goto MENU



