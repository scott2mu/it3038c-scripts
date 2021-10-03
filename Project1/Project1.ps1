#Project 1 Murray Scott IT3038c
#10/3/2021
#All commands were written from prior knoledge of PS commands.
Write-Output "This PS script runs a few commands to get info about your computer and other things."
Write-Output "The Date is:"
Get-Date
$dir = Read-Host "Please enter a directory to read its contents and info of each folder/file: "
Get-ChildItem $dir
$process = Read-Host "Please enter a process name to open the process: Example: notepad (Please open notepad to continue to next step)"
Start-Process $process
Write-Output "Please save a blank text file to your desired directory"
$filename = Read-Host "What is the name of the file?"
$textinput = Read-Host "Please enter some text to put into that file: "
$dir2 = Read-Host "Please enter the directory of that file: "
$textinput | Out-File $dir2
Write-Output "Let me open the file"
Invoke-Item $dir2\$filename
Write-Output "Thank you for testing my script"