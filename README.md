# PowerShell

Clone to personal powershell home directory, typical `$HOME\Documents\PowerShell` alternative run ```echo $PROFILE``` to check.

# Dependencies

if Winget is install run

```PowerShell
winget install bat
winget install eza
winget install BurntSushi.ripgrep.MSVC
winget install fzf
winget install --id Starship.Starship
winget install ajeetdsouza.zoxide
```

# Setup

## Environment variables

```
FZF_DEFAULT_COMMAND = rg --files --hidden --glob "!*.git" --glob "!AppData" --glob "!.nuget" --glob "!.dotnet"  
FZF_ALT_C_OPTS = --walker-skip .git,node_modules,target,obj,AppDate,.nuget --preview "tree -C {} | head -200"
```
