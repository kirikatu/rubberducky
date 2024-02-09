$batchContent = @"
@echo off
color 2
:top
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
goto top
"@
$batchFilePath = "c:\temp\matrix.bat"
Set-Content -Path $batchFilePath -Value $batchContent
Start-Process -FilePath $batchFilePath
