$fileInput = Read-Host "Enter the directory to recursively search for applications"
$exeFiles = Get-ChildItem $fileInput -Recurse | Where-Object { $_.Extension -eq ".exe" }
$exeFiles | ForEach-Object { $_.FullName }