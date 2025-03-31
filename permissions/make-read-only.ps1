$fileInput = Read-Host "Enter the file/directory to make read only"
icacls $fileInput /grant:r "Users:(R)"
icacls $fileInput