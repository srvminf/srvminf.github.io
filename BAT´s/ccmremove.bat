######################
@echo off
Rem Force removal and re-install of SCCM client
Rem SCRIPT NÃO DEVE SER EXECUTADO EM NENHUM SITE SERVER

echo Deleting ccmsetup registry key.....
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\CCMSetup" /va /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\CCM" /va /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SMS" /va /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\SMS\Certificates" /va /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Classes\Installer\Products\009BF4688EE4961F41A44D0282A2340D9" /va /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\SOFTWARE\Classes\Installer\Products\19BF4688EE4961F41A44D0282A2340D9" /va /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{8864FB91-94EE-4F16-A144-0D82A232049D}" /va /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{DE5370D5-6235-4AC6-89D9-31E8B1941AE3}" /va /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\{2609EDF1-34C4-4B03-B634-55F3B3BC4931}" /va /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\SOFTWARE\Wow6432Node\Microsoft\ccmsetup.reset" /va /f

echo Terminating CM executables.....
taskkill /f /im ccmsetup.exe
taskkill /f /im ccmexec.exe
taskkill /f /im rundll32.exe
taskkill /f /im msiexec.exe
echo Re-registering MSI engine.....
C:\Windows\system32\msiexec.exe /unregister
C:\Windows\system32\msiexec.exe /regserver
echo Deleting Windows\temp files to free up disk space
del c:\windows\temp\*.* /s /q
del C:\ProgramData\Microsoft\Crypto\RSA\MachineKeys\19c5cf9c7b5dc9de3e548adb70398402 /q /f
echo Re-registering WMI files.....
%windir%\system32\wbem\winmgmt /resyncperf
net stop winmgmt /y
regsvr32 /s %systemroot%\system32\scecli.dll
regsvr32 /s %systemroot%\system32\userenv.dll
for /f %%s in ('dir /b /s %windir%\system32\wbem\*.dll') do regsvr32 /s %%s
for /f %%s in ('dir /b /s %windir%\system32\wbem\*.mof') do mofcomp %%s
for /f %%s in ('dir /b %windir%\system32\wbem\*.mfl') do mofcomp %%s
net start winmgmt
%windir%\system32\wbem\wmiprvse /regserver
echo Re-compiling MS Policy Platform...
mofcomp "C:\Program Files\Microsoft Policy Platform\ExtendedStatus.mof"
echo %errorlevel%
echo Stopping WUA....
net stop wuauserv
ping 127.0.0.1 -n 15
echo Deleting SoftwareDistribution files to free up disk space
del C:\Windows\SoftwareDistribution\*.* /s /q
Ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
echo Starting WUA....
net start wuauserv
echo Renaming Registry.pol file to old
ren C:\Windows\System32\GroupPolicy\Machine\Registry.pol registry.old
echo Deleting ccmsetup service.....
sc delete ccmsetup
echo Uninstalling CM client.....
%windir%\ccmsetup\ccmsetup /uninstall
echo Pausing for 1 minutes.....
ping 127.0.0.1 -n 10
echo Terminating Ccmsetup, if still running.....
taskkill /f /im ccmsetup.exe
echo Uninstalling CM client.....
%windir%\ccmsetup\ccmsetup /uninstall
echo Pausing for 1 minutes.....
ping 127.0.0.1 -n 10
echo Terminating Ccmsetup, if still running.....
taskkill /f /im ccmsetup.exe
echo Deleting SMScfg.ini
del %windir%\smscfg.ini
echo Deleting ccmsetup registry key round 2.....
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\CCMSetup" /va /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\CCM" /va /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SMS" /va /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\SystemCertificates\SMS\Certificates" /va /f
wmic /Namespace:\\root path __Namespace where Name="ccm" delete

ping 127.0.0.1 -n 10
del C:\Windows\CCM\*.sqlce /s /q
del C:\Windows\CCM\*.mof /s /q
del C:\Windows\CCM\*.sdf /s /q
del C:\Windows\CCM\*.xsd /s /q
echo Renaming CCM and CCMsetup folder to Old
ren C:\Windows\CCM CCM.old
ren C:\Windows\CCMsetup CCMsetup.old

@echo off 
REM Reinicializa serviço PFE Remediation
echo Verifica estado do servi�o PFE Remediation e caso RUNNING pare...
sc query "PFERemediation" | findstr "RUNNING"
if %ERRORLEVEL% == 0 (net stop "PFERemediation")

ping 127.0.0.1 -n 60

echo Verifica estado do servi�o PFE Remediation e caso RUNNING pare...
sc query "PFERemediation" | findstr "STOPPED"
if %ERRORLEVEL% == 0 (net start "PFERemediation")

echo End of Script
