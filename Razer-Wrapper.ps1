Start-Service -Name "Razer Game Manager Service"
Start-Service -Name "Razer Central Service"
Start-Service -Name "Razer Synapse Service"

Start-Process -FilePath "C:\Program Files (x86)\Razer\Synapse3\WPFUI\Framework\Razer Synapse 3 Host\Razer Synapse 3.exe"
$Process = Get-Process "Razer Synapse 3"
Wait-Process -Id $Process.Id

Stop-Service -Name "Razer Synapse Service"
Stop-Service -Name "Razer Central Service"
Stop-Service -Name "Razer Game Manager Service"
