function Show-ToopTip {
    param (
        [Parameter(Mandatory)]
        $BalloonTipText,
        
        $BalloonTipTitle = "Hello $env:USERNAME",
        
        [ValidateSet('Info', 'Warning', 'Error', 'None')]
        $BalloonTipIcon = 'Info',
    
        $Duration = 500
    )

    Add-Type -AssemblyName System.Windows.Forms
    $global:balmsg = New-Object System.Windows.Forms.NotifyIcon
    $path = (Get-Process -id $pid).Path
    $balmsg.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path)
    $balmsg.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::$BalloonTipIcon
    $balmsg.BalloonTipText = $BalloonTipText
    $balmsg.BalloonTipTitle = $BalloonTipTitle
    $balmsg.Visible = $true
    $balmsg.ShowBalloonTip(1000)
}