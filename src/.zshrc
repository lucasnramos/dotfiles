HISTFILE=~/.cache/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
zstyle :compinstall filename '/home/drleone/.zshrc'
autoload -Uz compinit
autoload -U colors && colors
compinit

PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

source $ALIASES
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
