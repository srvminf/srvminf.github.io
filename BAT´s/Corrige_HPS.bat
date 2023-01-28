@echo off


echo Digie o nome do micro:

@set /p maquina= 


findstr  /v "ICDTCPMYIP" \\%maquina%\C$\Windows\SysWOW64\icdcomm.cfg > \\%maquina%\C$\Windows\SysWOW64\icdcomm2.cfg


del \\%maquina%\C$\Windows\SysWOW64\icdcomm.cfg


rename \\%maquina%\C$\Windows\SysWOW64\icdcomm2.cfg icdcomm.cfg


REG ADD \\%maquina%\HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\ShenZhenHW /v ICDTCPMYIP /t REG_SZ /f


sc \\%maquina% start icdcomm
sc \\%maquina% query icdcomm


pause