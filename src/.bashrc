# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000
# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# sourcing the git-prompt script
source ~/.scripts/git-prompt.sh

if [ "$color_prompt" = yes ]; then
    PS1='\h:\[\033[01;34m\] \w \[\033[00m\]$(__git_ps1 "git (%s)")\$ '
else
	PS1=' \w $(__git_ps1 " (%s)")\$ '
fi
unset color_prompt force_color_prompt

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#################################
# USER CONFIGURATIONS
#################################

# Vi Mode
set -o vi

# Check if aliases file is present and loads it
if [ -f ~/.aliases ]; then
     . ~/.aliases
fi

# clear screen with <C-l> when in insert mode of bash vi
bind -m vi-insert "\C-l":clear-screen

# auto 'cd' by typing the directory only
shopt -s autocd

# Set bash to autocomplete like zsh-ish
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# "Lazy load" NVM with custom script by Daniel Imms: https://www.growingwiththeweb.com/2018/01/slow-nvm-init.html
# Defer initialization of nvm until nvm, node or a node-dependent command is
# run. Ensure this block is only run once if .bashrc gets sourced multiple times
# by checking whether __init_nvm is a function.
#if [ -s "$HOME/.nvm/nvm.sh" ] && [ ! "$(type -t __init_nvm)" = function ]; then
#  export NVM_DIR="$HOME/.nvm"
#  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
#  declare -a __node_commands=('nvm' 'node' 'npm' 'yarn' 'gulp' 'grunt' 'webpack')
#  function __init_nvm() {
#    for i in "${__node_commands[@]}"; do unalias $i; done
#    . "$NVM_DIR"/nvm.sh
#    unset __node_commands
#    unset -f __init_nvm
#  }
#  for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
#fi

