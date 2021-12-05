Start-Service -Name Synergy
Start-Process -FilePath "C:\Program Files\Synergy\synergy.exe"
$SynergyProcess = Get-Process synergy
Wait-Process -Id $SynergyProcess.Id
Stop-Service -Name Synergy