$From = "flansmtp@flanigans.net"
$To = "bsinclair@flanigans.net"
$Subject = "Test"
$Body = "More Test"
$SMTPServer = "smtp.office365.com"
$SMTPPort = "587"
Send-MailMessage -From $From -to $To -Subject $Subject `
-Body $Body -SmtpServer $SMTPServer -port $SMTPPort -UseSsl `
-Credential (Get-Credential) si