@ECHO OFF
@ECHO.  
@ECHO        #####################################################################
@ECHO        #####################################################################
@ECHO        #############                                       #################
@ECHO        #############   BANCO DO NORDESTE DO BRASIL         #################
@ECHO        #############   LOGON SCRIPT                        #################
@ECHO        #############   MAPEAMENTO COMPLETO DE REDES        #################
@ECHO        #############   FERNANDO C017197 Microinformatica   #################
@ECHO        #############                                       #################
@ECHO        #####################################################################
@ECHO        #####################################################################
@ECHO. 
@ECHO.

set /p unidade= Digite o cod. da unidade com tres digitos: %unidade% 
NET use * /del /y

:::::: MAPEAMENTO DE UNIDADES DENCENTRALIZADAS :::::::

net use i: \\S3DCAG%unidade%\install
net use u: \\s3dcag%unidade%\areas
net use p: \\s3dcag%unidade%\programs
net use t: \\s3dcag%unidade%\utils
net use y: \\s3dcag%unidade%\publico
net use m: \\s3dcag%unidade%\perfis
net use n: \\s3dcag%unidade%\arquivos
net use s: \\ag%unidade%_ger01\sistemas

:::::: MAPEAMENTO DE UNIDADES CENTRALIZADAS :::::::

NET USE  U: \\Capgv.intra.bnb\dfscorp\AREASAG%unidade%
NET USE  N: \\Capgv.intra.bnb\dfscorp\ARQUIVOSAG%unidade%
NET USE  I: \\Capgv.intra.bnb\dfscorp\INSTALLAG%unidade%
NET USE  M: \\Capgv.intra.bnb\dfscorp\PERFISAG%unidade%
NET USE  Y: \\Capgv.intra.bnb\dfscorp\PUBLICO
NET USE  P: \\Capgv.intra.bnb\dfscorp\PROGRAMS
NET USE  T: \\Capgv.intra.bnb\dfscorp\UTILS
NET USE  S: \\AG%unidade%_GER01\SISTEMAS


