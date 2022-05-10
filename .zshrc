username=`id -nu`
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
bindkey -e

export PATH=$HOME/Library/Haskell/bin:$PATH
export PATH=$HOME/.config/composer/vendor/bin:$PATH
export PATH=$HOME/.local/share/nvim/lsp_servers:$PATH
export PATH=$HOME/.local/bin:$PATH

# XDG support to unclutter my home folder (also for neovim)
export XDG_CONFIG_HOME="$HOME/.config"
export LESSHISTFILE="$XDG_CONFIG_HOME"/less/history
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc

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

setopt always_to_end
setopt auto_menu
setopt auto_list
setopt glob_complete
setopt prompt_subst
PROMPT=$'%{\e[0;36m%}%n@%m %{\e[0m%}%{\e[0;35m%}%~%{\e[0m%} %{\e[0;32m%}%{$vcs_info_msg_0_%}%{\e[0m%}
%{\e[0;31m%}>%{\e[0m%} '

# Aliases
alias vi="nvim"
alias vim="nvim"
alias ls="ls --color=always --human-readable"
alias grep="grep --color=auto"
alias less="less --quiet -r"
alias battery="acpi"
alias open="xdg-open"

source ~/.machine_profile.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

autoload -U +X bashcompinit && bashcompinit
# complete -o nospace -C /usr/bin/terraform terraform
