param (
    [Parameter(Mandatory)]
    $BalloonTipText,
    
    $BalloonTipTitle="Attention: $env:USERNAME",
    
    [ValidateSet('Info', 'Warning', 'Error', 'None')]
    $BalloonTipIcon='Info',

    $Duration=1000)

Add-Type -AssemblyName System.Windows.Forms
$global:balmsg = New-Object System.Windows.Forms.NotifyIcon
$path = (Get-Process -id $pid).Path
$balmsg.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon($path)
$balmsg.BalloonTipIcon = [System.Windows.Forms.ToolTipIcon]::Info
$balmsg.BalloonTipText = $BalloonTipText
$balmsg.BalloonTipTitle = $BalloonTipTitle
$balmsg.Visible = $true
$balmsg.ShowBalloonTip($Duration)

# function test-value
# {
#     param(
#         [Parameter(Position=0)]
#         [ValidateSet('word','excel','powerpoint')]
#         [System.String]$Application,

#         [Parameter(Position=1)]
#         [ValidateSet('v2007','v2010')]
#         [System.String]$Version
#     )


#     write-host "Application: $Application"
#     write-host "Version: $Version"
# }