﻿Get-Mailbox -Identity flanigans*  -Filter {(RecipientTypeDetails -eq 'UserMailbox')} | Add-MailboxPermission  -User 'Brian Sinclair' -AccessRights FullAccess -InheritanceType All -AutoMapping $false