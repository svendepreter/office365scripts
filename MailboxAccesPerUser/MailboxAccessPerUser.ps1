﻿$UserCredential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
Import-PSSession $Session

Get-Mailbox | Get-MailboxPermission -User administrator@sportpaleisgroep.Be
Remove-PSSession $Session
