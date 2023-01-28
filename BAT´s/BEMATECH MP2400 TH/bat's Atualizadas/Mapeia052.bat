@ECHO OFF
REM 
REM BANCO DO NORDESTE DO BRASIL
REM LOGON SCRIPT
REM
NET USE * /DEL /y
NET USE  U: \\Capgv.intra.bnb\dfscorp\AREASAG052
NET USE  N: \\Capgv.intra.bnb\dfscorp\ARQUIVOSAG052
NET USE  I: \\Capgv.intra.bnb\dfscorp\INSTALLAG052
NET USE  M: \\Capgv.intra.bnb\dfscorp\PERFISAG052
NET USE  Y: \\Capgv.intra.bnb\dfscorp\PUBLICO
NET USE  P: \\Capgv.intra.bnb\dfscorp\PROGRAMS
NET USE  T: \\Capgv.intra.bnb\dfscorp\UTILS
NET USE  S: \\Capgv.intra.bnb\dfscorp\SISTEMASAG052


C:\Suporte\PER4100.lnk
C:\Suporte\PTTECBNB.lnk