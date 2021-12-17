param (
    #[Parameter(Mandatory)]
    $InstalledLocation = "C:\Users\Ryan\Development\Source\powershell-scriptlets", 

    #[Parameter(Mandatory)]
    #[ValidateSet('Hidden', 'Minimized', 'Maximized', 'Normal')]
    $WindowStyle = "Hidden"
)

Start-Process powershell.exe -verb runas -ArgumentList "-WindowStyle $($WindowStyle) -File $($InstalledLocation)\Start-Elevated.ps1 -WorkingDirectory $($InstalledLocation)"