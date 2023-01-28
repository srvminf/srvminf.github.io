@echo \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
@echo\\\\\\\\\\\\\\\\\VER ITEM PATRIMONIAL\\\\\\\\\\\\\\\\\\\\\
@echo \\\\\\\\\\\\\\\\Autor: Laiza c013299\\\\\\\\\\\\\\\\\\\\\\
@echo \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


set /p computador= Digite o IP do seu computador: 


wmic /node:%computador% computersystem list brief /format:list
wmic /node:%computador% bios get serialnumber
wmic /node:%computador% OS GET Caption,OSArchitecture,Version,Status,SystemDrive





pause
