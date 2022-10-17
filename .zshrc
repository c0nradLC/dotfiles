PS1='%F{blue}%B%~%b%f %F{green}❯%f '

HISTFILE=~/.history
HISTSIZE=100000
SAVEHIST=100000

setopt inc_append_history

autoload -U compinit && compinit

bindkey -e
bindkey "\e[A" history-beginning-search-backward
bindkey "\e[B" history-beginning-search-forward
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char

alias ls='ls --color=auto -hv'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias zed='zedit'

export BROWSER=librewolf

[ -f "/home/cr00ky/.ghcup/env" ] && . "/home/cr00ky/.ghcup/env" # ghcup-env