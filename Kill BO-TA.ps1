<#
.AUTHOR
   <Brian Sinclair>
.SYNOPSIS
   <Check to see if the Back Office or Time and Attendance programs are running.>
.DESCRIPTION
   <Due to the fact that some individuals would often leave the Back office program or the Time and Attendance open thus interrupt the other script that collects the restaurant file. This script was created to close those programs to prevent further issues.>
#>

#Get the two processes that you need to close.
$test = "notepad*"

#Run command to get them intto a variable.
Get-Process -Name $test -ErrorAction SilentlyContinue

#Attempt to close gently
if ($process) {$process.CloseMainWindow()
}

#Wait 5 senconds.
sleep 5

#If it still has not closed, Kill the process.
if ($process.HasExited) {$null
}
else {$process | Kill -Force -ErrorAction SilentlyContinue
}





