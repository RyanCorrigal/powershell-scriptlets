# powershell-scriptlets

powershell-scriptlets is a PowerShell library for dealing with system resource utilization while supporting realistic workload scenarios. 😁

## Installation

Use Microsoft Windows [PowerShell](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/powershell) to run powershell-scriptlets.

```powershell
.\Start.ps1
```

## Usage

### Parameters
- PathToScriptLocation (must not contain trailing backslash)
- WindowStyle
    - Hidden (default)
    - Maximized
    - Minimized
    - Normal

### Example Usage
***Note:*** *This does not require Adminstrative rights to start but you must accept the UAC prompt to continue.*
```powershell
# Ensure to wrap the parameters in quotes
.\Start.ps1 "C:\powershell-scriptlets" "Hidden"
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## Supporters / Feedback

**Shaun Gratton:** The Way Eye See IT [https://thewayeyeseeit.org/]

## License
[MIT](https://choosealicense.com/licenses/mit/)

