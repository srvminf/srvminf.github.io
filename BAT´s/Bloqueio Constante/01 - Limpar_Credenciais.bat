
echo Fechando os navegadores...
Taskkill /im firefox.exe /F
Taskkill /im chrome.exe /F
Taskkill /im iexplorer.exe /

net use \\somecomputeronmynetwork\somelocation$ /delete
cmdkey /delete:targetname

rundll32.exe keymgr.dll, KRShowKeyMgr

GPUPDATE /FORCE

