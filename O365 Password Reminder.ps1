######################### Setup you Credentials to be stored in a variable.
$pass = get-content C:\test\SecureString.txt | convertto-securestring
$cred = new-object -typename System.Management.Automation.PSCredential -argumentlist "bsinclair@flanigans.net",$pass

######################## Connect to Office365
Connect-MsolService -Credential $cred


####################### Grab all t users in your specific domain.
$users = Get-MsolUser #-UserPrincipalName bsinclair@flanigans.net
foreach ($user in $users) {


################################### Start setting up variables.
###################### User Variables
$domain = Get-MsolDomain
$Name = $user.DisplayName 
$emailaddress = $user.UserPrincipalName
$passwordlastchange = $user.LastPasswordChangeTimestamp 
$passwordexpires = $passwordlastchange.AddDays(90)
$Date = Get-Date
$timeleft = New-TimeSpan -Start $Date -End $passwordexpires

###################### Mail Variables
$smtp = "smtp.office365.com"
$port = "587"
$from = "bsinclair@flanigans.net"
$to = "$user.UserPrincipalName"
$subject = "FLANIGANS 0365 PASSWORD NOTIFICATION"
$body = "<b>This is the body of my email.</br>With <font color=`"red`">OPTIONAL</font> HTML tags</b>"


If ($timeleft.Days -lt 14 ) {

$Name
$timeleft.Days

}
}
