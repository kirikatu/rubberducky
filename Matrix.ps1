$batchContent = @"
@echo off
color 2
:top
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
goto top
"@
mkdir C:\temp
New-Item c:\temp\matrix.bat
$batchFilePath = "c:\temp\matrix.bat"
Set-Content -Path $batchFilePath -Value $batchContent

$n=30
while($n -ne 0){
Start-Process -FilePath $batchFilePath
$n= $n-1
}

