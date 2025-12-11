# PowerShell

Clone to personal powershell home directory, typical `$HOME\Documents\PowerShell` alternative run ```echo $PROFILE``` to check.

# Dependencies

if Winget is install run

```PowerShell
winget install sharkdp.bat
winget install --id lsd-rs.lsd
winget install BurntSushi.ripgrep.MSVC
winget install --id junegun.fzf
winget install --id Starship.Starship
winget install ajeetdsouza.zoxide
Install-Module -Name PSFzf
```

# Setup

## Environment variables

```
FZF_DEFAULT_COMMAND = rg --files --hidden --glob "!*.git" --glob "!AppData" --glob "!.nuget" --glob "!.dotnet"  
```
