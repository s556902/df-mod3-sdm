$fileInput = Read-Host "Enter the file/directory to export and encrypt the ACLs of"
$ACL = Get-Acl $fileInput | Format-List | Out-String
$secureString = ConvertTo-SecureString $ACL -AsPlainText
$secureString | ConvertFrom-SecureString | Set-Content "acl.txt"