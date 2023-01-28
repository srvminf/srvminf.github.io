@ECHO OFF
REM 
REM BANCO DO NORDESTE DO BRASIL
REM LOGON SCRIPT
REM
set /p unidade= Digite o numero da unidade.%unidade% 

NET USE * /DEL /y
NET USE  U: \\Capgv.intra.bnb\dfscorp\AREASAG%unidade%
NET USE  N: \\Capgv.intra.bnb\dfscorp\ARQUIVOSAG%unidade%
NET USE  I: \\Capgv.intra.bnb\dfscorp\INSTALLAG%unidade%
NET USE  M: \\Capgv.intra.bnb\dfscorp\PERFISAG%unidade%
NET USE  Y: \\Capgv.intra.bnb\dfscorp\PUBLICO
NET USE  P: \\Capgv.intra.bnb\dfscorp\PROGRAMS
NET USE  T: \\Capgv.intra.bnb\dfscorp\UTILS
NET USE  S: \\AG%unidade%_GER01\SISTEMAS


