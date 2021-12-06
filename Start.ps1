param ([Parameter(Mandatory)]$ScriptToExecute, $ArgumentList, $WindowStyle='Hidden')

Start-Process powershell -verb runas -ArgumentList "-WindowStyle Hidden -File $($ScriptToExecute)"