:: --- BATCH SCRIPT DE LIMPEZA * INICIO ---   
  
:: --- Limpa Temp do �su�rio Presente ---   
DEL /S /Q /F "%TEMP%\*.*"   
FOR /D %%d IN ("%TEMP%\*.*") DO RD /S /Q "%%d"   
  
:: --- Limpa Temp do �su�rio Presente ---   
DEL /S /Q /F "%Userprofile%\Configura��es locais\Temporary Internet Files\*.*"   
FOR /D %%d IN ("%Userprofile%\Configura��es locais\Temporary Internet Files\*.*") DO RD /S /Q "%%d"   
  
:: --- Limpa Recent do Usu�rio ---   
DEL /S /Q /F "%userprofile%\Recent\*.*"   
FOR /D %%d IN ("%Userprofile%\Recent\*.*") DO RD /S /Q "%%d"   
  
:: --- Limpa Temp do Sistema ---   
DEL /F/S/Q %WINDIR%\*.TMP   
DEL /F/S/Q %WINDIR%\TEMP\*.*   
FOR /D %%d IN ("%WINDIR%\TEMP\*.*") DO RD /S /Q "%%d"   
DEL /F/S/Q %WINDIR%\Prefetch\*.*   
  
:: --- BATCH SCRIPT DE LIMPEZA * FIM --- 
