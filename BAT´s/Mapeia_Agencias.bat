@echo off

set /p unidade= Digite o numero da unidade.%unidade% 

net use i: \\s3dcag%unidade%\install
net use m: \\s3dcag%unidade%\perfis
net use s: \\ag%unidade%_ger01\sistemas
net use u: \\s3dcag%unidade%\areas
net use p: \\s3dcag%unidade%\programs
net use t: \\s3dcag%unidade%\utils
net use y: \\s3dcag%unidade%\publico
net use w: \\s3dcag%unidade%\arquivos
net use z: \\s3dcag%unidade%\scanner


