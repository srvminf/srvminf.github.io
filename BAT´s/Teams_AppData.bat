set /p matricula= Digite a matricula: %matricula%

rmdir /S /Q "C:\Users\%matricula%\AppData\Local\Microsoft\Teams"
rmdir /S /Q "C:\Users\%matricula%\AppData\Local\Microsoft\TeamsMeetingAddin"
rmdir /S /Q "C:\Users\%matricula%\AppData\Local\Microsoft\TeamsPresenceAddin"
rmdir /S /Q "C:\Users\%matricula%\AppData\LocalLow\Microsoft\Teams"
rmdir /S /Q "C:\Users\%matricula%\AppData\Roaming\Microsoft Teams"
rmdir /S /Q "C:\Users\%matricula%\AppData\Roaming\Microsoft\Teams"

pause