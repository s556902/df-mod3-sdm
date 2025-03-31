# Working With Files & Folders
## Sample PowerShell Scripts
- `files/navigate-copy-move-del.ps1` - A simple script which changes the working directory, outputs the files in the working directory, and manipulates files.
- `files/get-export-logs.ps1` - A script which searches the 250 most recent Windows security logs, filters them for 'logged', and outputting filtered logs to a csv file
- `files/export-encrypt-acl.ps1` - A script which exports the ACL of a specified file then encrypts the ACL txt, allowing the ACL to be stored securely
- `files/get-exe-files.ps1` - A script which searches a directory recursively, outputting any exe files
## Relevant Commands
### Directory Navigation/File Creation
- `cd <directory>` - Change the working directory
- `Get-ChildItem <directory>` - Output all of the files within the current working directory, or an otherwise specified directory
- `pwd` - Output the current working directory
- `ni <file name>` - Create a blank file with the specified name
- `mkdir <directory name>` - Create a directory with the specified name
- `copy <source> <destination>` - Copies the specified source file/directory to the destination
- `move <source> <destination>` - Moves the specified file/directory from the source to the destination
- `del <file>` - Deletes the specified file
### Reading/Modifying Files & Output
- `Get-Content <file>` - Output the contents of a file
- `Add-Content <file> <content>` - Adds the specified content to a file
- `Select-String <path> -Pattern <search>` - Searches the specified file for a string/pattern
- `Export-Csv <destination>` - Exports output to a comma separated list
- `Where-Object` - Allows use of Windows properties to filter output
- `Read-Host <prompt>` - Prompt the user for custom input
### System Analysis
- `Get-WinEvent -ListLog *` - Lists all available Windows logs of all types
- `Get-WinEvent -ListLog * -LogName System` - Lists all available Windows system logs of all types
- `Get-WinEvent -ListLog * -LogName Security` - Lists all available Windows security logs
- `Get-WinEvent -ListLog * -LogName Application` - Lists all available Windows application logs
### Encryption
- `ConvertTo-SecureString -String <input>` - Encrypts standard strings to secure strings, returning a SecureString
- `ConvertFrom-SecureString -SecureString <input>` - Converts a secure srting into an encrypted standard string, which can be saved

# Permissions
- `permissions/make-read-only.ps1` - Makes the specified directory/file read-only, preventing any subsequent writes
- `permissions/take-ownership.ps1` - Makes the owner of the specified directory/file the user running the script
## Relevant Commands
### Access Control Lists
- `Get-Acl <file/directory>` - Outputs the ACL object for the specified, or current working directory
- `New-Object System.Security.AccessControl.FileSystemAccessRule("<user>", "<permission>, "<allow/deny>")` - Creates an ACL object of the specified rule
- `Set-Acl <file/directory> -AclObject <ACL object>` - Sets the specified file/directories permissions to the specified ACL rule
### ACLs with icacls
- `icacls <file/directory>` - Outputs ACL information for the specified file/directory
- `icacls <file/directory> /save <destination>` - Saves the ACL information for the specified file/directory to the specified destination
- `icacls <file/directory> /grant user:<r><rx><w><f>` - Grants specific permissions to the provided user at the specified file/directory
- `icacls <file/directory> /deny user:<r><rx><w><f>` - Denies specific permissions to the provided user at the specified file/directory
- `icacls <file/directory> /setowner <user>` - Sets the specified file/directories owner to the specified user
- `icacls <file/directory> /remove <user>` - Removes the provided users permissions from the specified file/directory
# Superior Bicyle Case
https://s556902.github.io/df-mod3-sdm/autopsy-report/report.html
## Description
The shown autopsy report is a forensics image recovered from employee Denise Robinson of Superioer Bicycle. The image was copied from a Windows 8 machine. E-Mails, passwords, and other user data can be observed.
## Notable Files
- `E-Mail at 2014-07-22 22:03:06 CDT` - Offering pictures for sale, thumbnails shown of artwork, birds, churches
- `E-Mail at 2014-08-08 12:01:22 CDT` - An E-Mail sent to jensens2015@gmail.com containing a C++ program of some sort of game
- `E-Mail at 2014-07-25 13:21:46 CDT` - Showing the bird and church sample thumbnails, mentioning future specials
- `/img_InCh05.img/Windows/System32/config/SAM` - The passwords of Windows users
- `/img_InCh05.img/Users/Denise/AppData/Local/Google/Chrome/User Data/Default/Login Data` - Google Chrome passwords of Denise Robinson