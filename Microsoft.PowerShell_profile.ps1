Invoke-Expression (&starship init powershell)
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# replace 'Ctrl+t' and 'Ctrl+r' with your preferred bindings:
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r' -TabExpansion
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }
Set-Alias -Name cdi -Value zi
Set-Alias -Name cd -Value z -Option AllScope

Set-Alias -Name ls -Value eza -Option AllScope
Set-Alias -Name l -Value ls
function ll {eza --long}
function lll {eza --long --all}
Set-Alias -Name la -Value lll
function lt {eza --long --tree --git-ignore}
function gitl {git log --pretty=oneline --graph --abbrev-commit}

# default ripgrep
# rg --files --hidden --glob '!*.git' --glob '!AppData' --glob '!.nuget' --glob '!.dotnet'
$Env:FZF_ALT_C_OPTS='--walker-skip .git,node_modules,target,obj,AppDate,.nuget --preview "tree {}"'

function fzf_preview { cmd /c fzf --preview "bat --style=numbers --color=always --line-range :500 {}" }
Set-Alias -Name fzf -Value fzf_preview

