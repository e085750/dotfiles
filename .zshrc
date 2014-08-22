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

#autocmd FileType * setlocal formatoptions-=ro
#export CLASSPATH=/usr/local/tomcat/common/lib/servlet.jar:.
#export CATALINA_BASE=/usr/local/tomcat
#export CATALINA_HOME=/usr/local/tomcat

export M2_HOME=$HOME/apps/maven/apache-maven-3.2.1
#export M2_HOME=/home/e085750/apache-maven-3.2.1 
#export M2=$M2_HOME/bin 
#export PATH=$M2:$PATH

export ANT_HOME=/usr/local/ant

export PATH=$PATH:$ANT_HOME/bin

export JAVA_HOME=/usr/bin/java
export JRE_HOME=/usr/bin/java

alias mv="mv -b"

alias cp="cp -i"

alias pd="popd"

setopt auto_pushd

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

