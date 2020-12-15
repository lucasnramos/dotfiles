# software shortcuts
alias rbash='source ~/.bashrc'
alias rzsh='source ~/.config/zsh/.zshrc'
alias rn='ranger'
alias cnf='$SCRIPTS/term-dotfiles'
alias sck='$SCRIPTS/term-suckless-config'
alias arch-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias G=" | grep -i"
alias L=" | less"
alias tvd="teamviewer daemon"
alias merge="xrdb merge $HOME/.Xresources"
alias tx='tmux'
alias fm='$FILEMANAGER'
alias pk='pkill -i'
alias pkf='pkill -f'
alias yt='youtube-dl'
alias unixfy='find . -type f -print0 | xargs -0 dos2unix'
alias scomp='rm -f config.h && sudo make install'
alias ct='contentful'
alias curl='curl -k'
# Git
alias g='git'
alias gs='git status'
alias gr='git remote'
alias gchk='git checkout'
alias gpl='git pull'
alias gps='git push'
alias gacm='git add . ; git commit -m'
alias gac='git add . ; git commit'
alias gd='git --git-dir=$HOME/.dot/ --work-tree=$HOME'
# systemd
alias sc="sudo systemctl"
alias scu="systemctl --user"
# APT & apt-get
alias sa='sudo apt'
alias sup='sudo apt update'
alias supp='sudo apt update && sudo apt upgrade'
alias sag='sudo apt-get'
# alias ag='apt-get'
alias ags='apt-cache search'
alias agi='sudo apt-get install'
alias agr='sudo apt-get remove --purge'
alias aginfo='apt-cache show'
# Pacman
alias p='pacman'
alias sp='sudo pacman'
alias pac='pacman'
alias spac='sudo pacman'
alias pacs='pacman -Ss'
alias paci='sudo pacman -S'
alias pacup='sudo pacman -Syu'
alias pacrm='sudo pacman -Rus'
# Navigation
alias ls='ls --color=auto'
alias ll='ls -lsA'
alias la='ls -A'
alias l='ls -CF'
# vim & neovim
alias v='vim'
alias nv='nvim'
alias vim='nvim'
# Fuzzys
alias fcd='cd $(fnd . d | fzy)'
alias fvi='vim $(fnd . f | fzy)'

