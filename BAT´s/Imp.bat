SET _Path1="C:\Users\%username%\AppData\Roaming\SoftGrid Client\S580-77D1629E-4FED-4CE2"
SET _Path2="C:\Users\%username%\AppData\Local\SoftGrid Client\S580-77D1629E-4FED-4CE2"
rd %_Path1% /S /Q
rd %_Path2% /S /Q
cd/ 
C:
echo
del *.tmp /s
shutdown -r -t 200 -f