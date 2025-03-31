$logs = Get-WinEvent -LogName Security -MaxEvents 250 | Where-Object { $_.Message -like '*logged*' }
$logs | Export-Csv logged-events.csv -NoTypeInformation