# Created by newuser for 4.3.10
#

autoload -U compinit; compinit

#setopt extended_glob

setopt hist_ignore_all_dups

autoload -U promptinit

promptinit

HISTFILE=~/.zsh_history
HISTSIZE=6000000
SAVEHIST=6000000
setopt share_history 

prompt elite2

alias mv="mv -b"

alias cp="cp -i -p"
alias ll="ls -la --color=auto"
alias ls="ls --color=auto"
alias pd="popd"

setopt auto_pushd

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
