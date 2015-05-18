PROMPT=$'%{$fg[cyan]%}%n@%m %{$reset_color%}%{$fg_bold[blue]%}%~%{$reset_color%} $(git_prompt_info)\
%{$fg[red]%}>%{$fg[yellow]%}>%{$fg_bold[cyan]%}>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
