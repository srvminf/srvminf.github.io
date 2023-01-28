@echo off
cls
c:
cd\
@echo.
@echo.
@echo.
@echo   //\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
@echo  //\\\\\\\  __   \\\\\\\         \\\\         \\\\\\\
@echo //\\\\\\\\  \_/  //\\\\\\\\  \\\\\\\\ \\\\\\\\\\\\\\\\
@echo//\\\\\\\\\      //\\\\\\\\\  \\\\\\\\ \\\\\\\\\\\\\\\\\
@echo\\\\\\\\\\\ ___  \\\\\\\\\\\  \\\\\\\\\         \\\\\\\\\
@echo \\\\\\\\\\ \_/  //\\\\\\\\\  \\\\\\\\\\\\\\\\\\ \\\\\\\\\
@echo  \\\\\\\\\     //\\\\\\\\\\  \\\\\\\\           \\\\\\\\\\
@echo   \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
@echo.
@echo.
set /p computador= Digite o NOME ou IP do seu computador: 
@echo.
@echo.
cd\
c:
xcopy /s /e /y /j /i /h \\MC1382645\TUDO\Java\32_bit\Java_6\JAVA6.31_8.66 \\%computador%\C$\Suporte
pause


set /p computador= Digite o NOME ou IP do seu computador: 
Cd C:\Users\c013299\Desktop\TUDO\Java\32_bit\Java_6
Copy jre-6u31-windows-i586.exe \\%computador%\c$\Temp /z

pause