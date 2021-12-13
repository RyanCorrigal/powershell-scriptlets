param ([Parameter(Mandatory)]$ScriptToExecute, $ArgumentList, $WindowStyle="Hidden")
Write-Host("run with args: -WindowStyle $($WindowStyle) -File $($ScriptToExecute)")
Start-Process powershell -verb runas -ArgumentList "-WindowStyle $($WindowStyle) -File $($ScriptToExecute)"
Read-Host("all done.")