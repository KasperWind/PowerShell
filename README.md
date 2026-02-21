# PowerShell

Clone to personal powershell home directory, typical `$HOME\Documents\PowerShell` alternative run ```echo $PROFILE``` to check.

# Dependencies

if Winget is install run

```PowerShell
winget install sharkdp.bat --source winget
winget install --id lsd-rs.lsd --source winget
winget install BurntSushi.ripgrep.MSVC --source winget
winget install --id junegun.fzf --source winget
winget install --id Starship.Starship --source winget
winget install ajeetdsouza.zoxide --source winget
winget install --id Microsoft.PowerShell --source winget
winget install --id Git.Git --source winget
Install-Module -Name PSFzf --source winget
```

# Setup

## Environment variables

```
FZF_DEFAULT_COMMAND = rg --files --hidden --glob "!*.git" --glob "!AppData" --glob "!.nuget" --glob "!.dotnet"  
```
