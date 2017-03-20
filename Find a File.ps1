$Var = "SQL Server*"
$Path = "\\flanfs"

Get-ChildItem -Path $Path -Recurse | where { $_.Name -like "$Var" }