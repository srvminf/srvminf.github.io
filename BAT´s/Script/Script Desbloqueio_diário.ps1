1..100000 | ForEach-Object {Start-Sleep 5;Get-ADUser -server agencias.intra.bnb -Identity F127167 -Properties * | Where {$_.LockedOut -eq "True"}} | Unlock-ADAccount
1..100000 | ForEach-Object {Start-Sleep 5;Get-ADUser -server agencias.intra.bnb -Identity F121932 -Properties * | Where {$_.LockedOut -eq "True"}} | Unlock-ADAccount
1..100000 | ForEach-Object {Start-Sleep 5;Get-ADUser -server agencias.intra.bnb -Identity F086606 -Properties * | Where {$_.LockedOut -eq "True"}} | Unlock-ADAccount
1..100000 | ForEach-Object {Start-Sleep 5;Get-ADUser -server agencias.intra.bnb -Identity F103799 -Properties * | Where {$_.LockedOut -eq "True"}} | Unlock-ADAccount
1..100000 | ForEach-Object {Start-Sleep 5;Get-ADUser -server agencias.intra.bnb -Identity F083240 -Properties * | Where {$_.LockedOut -eq "True"}} | Unlock-ADAccount
