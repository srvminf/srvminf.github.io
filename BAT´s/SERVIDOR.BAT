@ECHO OFF
COLOR 0A


:menu

ECHO.

set /p servidor= Digitar numero do servidor: 

dir \\s3dcag%servidor%\utils\suporte

dir \\s3dcag%servidor%\programs

dir \\s3dcag%servidor%\programs\FLEXIMAGE\DRIVERS_SCANNER

dir \\s3dcag%servidor%\programs\FLEXIMAGE\DRIVERS_SCANNER\Kodak

dir \\s3dcag%servidor%\Content

ping ag%servidor%_ger01




goto menu
pause
