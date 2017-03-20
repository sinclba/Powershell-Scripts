Set-UnifiedGroup -Identity "ALL SUPERVISORS" -AccessType Private

Get-Mailbox –Resultsize Unlimited | Set-MailboxMessageConfiguration –IsReplyAllTheDefaultResponse $false