##############################################################################
$From = "bsinclair@flanigans.net"
$To = "sinclba@gmail.com"
$Password = cat C:\test\securestring.txt | convertto-securestring
$Subject = "Disk Utilization is approaching Warning levels"
$Body = "This is a test"
$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$Cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $From, $Password

Send-MailMessage -From $From -to $To -Subject $Subject `
-Body $Body -SmtpServer $SMTPServer -port $SMTPPort -UseSsl -Credential $Cred
##############################################################################

#"Strider1" | ConvertTo-SecureString -AsPlainText -Force | ConvertFrom-SecureString | Out-File "C:\Test\EmailPassword.txt"#

$DiskSize = Get-WmiObject -Class Win32_LogicalDisk | Where-Object { $_.DeviceID -eq "C:" } | Select -ExpandProperty Size 

$FreeSpace = Get-PSDrive C | select -ExpandProperty used

$Percent = [Math]::round(($FreeSpace/$DiskSize)*100)




 
