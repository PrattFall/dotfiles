username=`id -nu`
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

zstyle :compinstall filename '/home/$username/.zshrc'

autoload -Uz compinit
compinit

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats "[%s:%b] (%m%u%c)"
precmd() {
	vcs_info
}

setopt prompt_subst
PROMPT=$'%{\e[0;36m%}%n@%m %{\e[0m%}%{\e[1;34m%}%~%{\e[0m%} %{\e[0;32m%}%{$vcs_info_msg_0_%}%{\e[0m%}
%{\e[0;31m%}>%{\e[0;33m%}>%{\e[1;36m%}>%{\e[0m%} '

export EDITOR=nvim
export SVN_EDITOR=nvim

alias lg="ls -a | grep"
alias ls="ls --color=auto"

