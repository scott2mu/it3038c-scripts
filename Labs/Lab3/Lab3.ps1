#Lab 3 Murray Scott IT3038C
$IP = (Get-NetIPAddress).ipv4address | Select-String "192*"
$User = whoami
$hostname = [System.Net.DNS]::GetHostByName('').HostName
$Version = $PSVersionTable.PSVersion
$date = Get-Date
Write-Host "This Machine's IP is: $IP. User is $User. Hostname is $hostname. Powershell Version $Version. Today's Date is $date"

