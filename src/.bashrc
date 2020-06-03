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
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
HISTFILE=$HOME/.cache/.bash_history
# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# sourcing the git-prompt script
source $SCRIPTS/git-prompt.sh

# PS1 without colors
# PS1='${debian_chroot:+($debian_chroot)}\u@\h [\w] $(__git_ps1 "(%s)")\n\$ '

PS1='${debian_chroot:+($debian_chroot)}\[\e[32m\]\u@\h \[\e[35m\][\w] \[\e[36m\]$(__git_ps1 "(%s)")\[\e[00m\]\n$ '

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
[[ -f $ALIASES ]] && source $ALIASES

# clear screen with <C-l> when in insert mode of bash vi
bind -m vi-insert "\C-l":clear-screen

# auto 'cd' by typing the directory only
shopt -s autocd

# Set bash to autocomplete like zsh-ish
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

