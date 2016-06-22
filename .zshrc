export LANG=ja_jp.UTF-8
export PROMPT='%F{cyan}%n%f:%c '

autoload -Uz compinit
compinit

setopt auto_pushd
setopt pushd_ignore_dups

alias -g L='| less'
alias -g G='| grep'

HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

setopt print_eight_bit
setopt no_beep

bindkey "^[[Z" reverse-menu-complete
