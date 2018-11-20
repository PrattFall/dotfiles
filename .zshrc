username=`id -nu`
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

export PATH=$HOME/Library/Haskell/bin:$PATH

# XDG support to unclutter my home folder (also for neovim)
export XDG_CONFIG_HOME="$HOME/.config"
export LESSHISTFILE="$XDG_CONFIG_HOME"/less/history
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc

zstyle :compinstall filename '/home/$username/.zshrc'

# Completion stuff
autoload -Uz compinit
compinit

zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# Important variables, I swear!
export EDITOR=nvim
export SVN_EDITOR=nvim

# Prompt stuff
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats "[%s:%b] (%m%u%c)"
precmd() {
	vcs_info
}

setopt prompt_subst
PROMPT=$'%{\e[0;36m%}%n@%m %{\e[0m%}%{\e[0;35m%}%~%{\e[0m%} %{\e[0;32m%}%{$vcs_info_msg_0_%}%{\e[0m%}
%{\e[0;31m%}>%{\e[0m%} '

# Aliases
alias vi="nvim"
alias vim="nvim"
alias ls="ls --color"
alias battery="acpi"

source .machine_profile
