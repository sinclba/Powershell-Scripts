<#
.AUTHOR
   Brian Sinclair.
.SYNOPSIS
   This is a script that refreshes Cubby.
.DESCRIPTION
   This will kill any Cubby process currently running. It then waits 30 seconds and starts cubby back up.
.PARAMETER <paramName>
   N/A
.EXAMPLE
   Refresh Cubby
#>

#Set Variables
$task = "cubby*"
$path = "C:\Users\pinnacle\AppData\Roaming\cubby\cubby.exe"

#Kill any process named like Cubby.
kill -processname $task -Verbose

#Pause for 30 seconds.
Start-Sleep -Seconds 30

#Start the Cubby process.
Start-Process -FilePath $path -Verbose