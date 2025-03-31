$fileInput = Read-Host "Enter the file/directory to take ownership of"
icacls $fileInput /setowner $env:USERNAME