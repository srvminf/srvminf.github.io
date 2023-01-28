Write-Host -ForegroundColor yellow "#######################################################" 
"" 
Write-Host -ForegroundColor Green "PowerShell para deleção cache & cookies em Firefox, Chrome & IE browsers" 
Write-Host -ForegroundColor Green "By Renata Guimarães C007641, Outubro - 2019" 
Write-Host -ForegroundColor Green "Versão: 1" 
"" 
Write-Host -ForegroundColor yellow "#######################################################" 
""     
######################### 
"-------------------" 
Write-Host -ForegroundColor Green "SEÇÃO 1: Iniciando Script..." 
"-------------------" 
"-------------------" 
#Clear Mozilla Firefox Cache 
       Write-Host -ForegroundColor Green "SEÇÃO 2: Limpeza Cache Mozilla Firefox" 
         "-------------------" 
       Write-Host -ForegroundColor yellow "Limpeza Cache Mozilla Firefox" 
       Write-Host -ForegroundColor cyan 
           Remove-Item -path C:\Users\$env:USERNAME\AppData\Local\Mozilla\Firefox\Profiles\*.default\cache\* -Recurse -Force -EA SilentlyContinue -Verbose 
             Remove-Item -path C:\Users\$env:USERNAME\AppData\Local\Mozilla\Firefox\Profiles\*.default\cache\*.* -Recurse -Force -EA SilentlyContinue -Verbose 
 	    Remove-Item -path C:\Users\$env:USERNAME\AppData\Local\Mozilla\Firefox\Profiles\*.default\cache2\entries\*.* -Recurse -Force -EA SilentlyContinue -Verbose 
             Remove-Item -path C:\Users\$env:USERNAME\AppData\Local\Mozilla\Firefox\Profiles\*.default\thumbnails\* -Recurse -Force -EA SilentlyContinue -Verbose 
             Remove-Item -path C:\Users\$env:USERNAME\AppData\Local\Mozilla\Firefox\Profiles\*.default\cookies.sqlite -Recurse -Force -EA SilentlyContinue -Verbose 
             Remove-Item -path C:\Users\$env:USERNAME\AppData\Local\Mozilla\Firefox\Profiles\*.default\webappsstore.sqlite -Recurse -Force -EA SilentlyContinue -Verbose 
             Remove-Item -path C:\Users\$env:USERNAME\AppData\Local\Mozilla\Firefox\Profiles\*.default\chromeappsstore.sqlite -Recurse -Force -EA SilentlyContinue -Verbose 
         
     Write-Host -ForegroundColor yellow "Limpeza Cache Mozilla Firefox" 
     Write-Host -ForegroundColor yellow "Concluído..." 
     "" 
     "-------------------" 
     # Clear Google Chrome  
     Write-Host -ForegroundColor Green "SEÇÃO 3: Limpeza Cache Google Chrome" 
     "-------------------" 
     Write-Host -ForegroundColor yellow "Limpeza Cache Google Chrome" 
     Write-Host -ForegroundColor cyan 
             Remove-Item -path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\Default\Cache\*" -Recurse -Force -EA SilentlyContinue -Verbose 
Remove-Item -path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\Default\Cache2\entries\*" -Recurse -Force -EA SilentlyContinue -Verbose 
             Remove-Item -path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\Default\Cookies" -Recurse -Force -EA SilentlyContinue -Verbose 
             Remove-Item -path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\Default\Media Cache" -Recurse -Force -EA SilentlyContinue -Verbose 
             Remove-Item -path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\Default\Cookies-Journal" -Recurse -Force -EA SilentlyContinue -Verbose 
               # Comment out the following line to remove the Chrome Write Font Cache too. 
             # Remove-Item -path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\Default\ChromeDWriteFontCache" -Recurse -Force -EA SilentlyContinue -Verbose 
 
     Write-Host -ForegroundColor yellow "Concluído..." 
     "" 
     "-------------------" 
     # Clear Internet Explorer 
     Write-Host -ForegroundColor Green "SEÇÃO 4: Limpeza Cache Internet Explorer" 
      "-------------------" 
     Write-Host -ForegroundColor yellow "Limpeza cache Internet Explorer" 
     Write-Host -ForegroundColor cyan 
             Remove-Item -path "C:\Users\$env:USERNAME\AppData\Local\Microsoft\Windows\Temporary Internet Files\*" -Recurse -Force -EA SilentlyContinue -Verbose 
 	    Remove-Item -path "C:\Users\$env:USERNAME\AppData\Local\Microsoft\Windows\WER\*" -Recurse -Force -EA SilentlyContinue -Verbose 
 	    Remove-Item -path "C:\Users\$env:USERNAME\AppData\Local\Temp\*" -Recurse -Force -EA SilentlyContinue -Verbose 
 	    Remove-Item -path "C:\Windows\Temp\*" -Recurse -Force -EA SilentlyContinue -Verbose 
 	    Remove-Item -path "C:\`$recycle.bin\" -Recurse -Force -EA SilentlyContinue -Verbose
        CMD.EXE /C rundll32.exe InetCpl.cpl,ClearMyTracksByProcess 4351
 
     Write-Host -ForegroundColor yellow "Concluído..." 
     "" 
     Write-Host -ForegroundColor Green "Script Concluído!" 
       
 	Exit 
 	
