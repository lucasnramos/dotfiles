abbr g "git"
# software shortcuts
abbr rbash "source ~/.bashrc"
abbr rzsh "source ~/.zshrc"
abbr rn "ranger"
abbr conf "$SCRIPTS/term-dotfiles"
abbr suck "$SCRIPTS/term-suckless-config"
abbr sc "sudo systemctl"
abbr arch-grub "sudo grub-mkconfig -o /boot/grub/grub.cfg"
abbr G "| grep -i"
abbr merge "xrdb merge $HOME/.Xresources"
# Git
abbr g "git"
abbr gs "git status"
abbr gr "git remote"
abbr gc "git checkout"
# systemd
abbr sc "sudo systemctl"
abbr scu "systemctl --user"
# APT & apt-get
abbr sa "sudo apt"
abbr sag "sudo apt-get"
abbr sup "sudo apt update"
abbr supp "sudo apt update && sudo apt upgrade"
abbr ag "apt-get"
abbr sag "sudo apt-get"
abbr ags "apt-cache search"
abbr agi "sudo apt-get install"
abbr agr "sudo apt-get remove --purge"
abbr aginfo "apt-cache show"
# Pacman
abbr p "pacman"
abbr sp "sudo pacman"
abbr pac "pacman"
abbr spac "sudo pacman"
abbr pacs "pacman -Ss"
abbr paci "sudo pacman -S"
abbr pacup "sudo pacman -Syu"
abbr pacrm "sudo pacman -Rus"
# Navigation
abbr ll "ls -lsA"
abbr la "ls -A"
abbr l "ls -CF"
abbr gdot "cd $HOME/dotfiles"
abbr conf "$SCRIPTS/term-dotfiles"
abbr gdoc "cd $HOME/Documents"
abbr gscr "cd $SCRIPTS"
abbr gh "cd $HOME"
# vim & neovim
abbr vim "nvim"
abbr vprofile "vim ~/.profile"
abbr vfish "vim $HOME/.config/fish/config.fish"

function fish_prompt
    printf "%s@%s [%s] %s\n\$ " (whoami) (hostname) (prompt_pwd) (fish_git_prompt)
end
