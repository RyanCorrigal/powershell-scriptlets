Synergy
Function Show-Tooltip {
    param (
        [Parameter(Mandatory)]
        $BalloonTipText,
        
        $BalloonTipTitle = "Attention: $env:USERNAME",
        
        [ValidateSet('Info', 'Warning', 'Error', 'None')]
        $BalloonTipIcon = 'Info',
    
        $Duration = 1000)
    
    Add-Type -AssemblyName System.Windows.Forms
    $global:balmsg = New-Object System.Windows.Forms.NotifyIcon
    $path = (Get-Process -id $pid).Path
    $balmsg.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path)
    $balmsg.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Info
    $balmsg.BalloonTipText = $BalloonTipText
    $balmsg.BalloonTipTitle = $BalloonTipTitle
    $balmsg.Visible = $true
    $balmsg.ShowBalloonTip($Duration)
}

function Synergy {
    Start-ServiceWrapper "synergy" "C:\Program Files\Synergy\synergy.exe" "Synergy" "Synergy"
}

function Start-ServiceWrapper {
    param (
        [Parameter(Mandatory)]
        $ServiceName,
        [Parameter(Mandatory)]
        $ProgramFilePath,
        $FriendlyServiceName = $ServiceName,
        $FriendlyProgramName = $ProgramToWrap
)

    Show-ToolTip "Starting $($FriendlyServiceName) service...`n`n(Say goodbye to your system resources)"
    $Service = Get-Service -Name $ServiceName
    $Service.Start()
    $Service.WaitForStatus("Running")
    #Show-ToolTip "Synergy service started. Starting Synergy..."
    $Process = Start-Process -FilePath $ProgramFilePath -PassThru
    Wait-Process -Id $Process.Id
    Show-ToolTip "$($FriendlyProgramName) Closed. Stopping $($FriendlyServiceName) service..."
    Stop-Service -Name $ServiceName
    Show-ToolTip "$($FriendlyServiceName) service stopped.`n`n(Enjoy your reclaimed system resources)"
}