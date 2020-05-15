# dotfiles

My configuration files for terminal and unix bases OS

# Xorg config directory for tearfree (Radeon or AMDGPU) Ubuntu

/usr/share/X11/xorg.conf.d/


# Force AMDGPU driver to load - Arch Linux

Install xf86-video-amdgpu driver with pacman and add the following to the grub config at /etc/default/grub:

GRUB_CMDLINE_LINUX_DEFAULT="quiet splash radeon.cik_support=0 amdgpu.cik_support=1 modprobe.blacklist=radeon"

## Dependencies

`stow git sysstat tmux ranger acpi (for laptop batteries) i3-wm | i3-gaps i3blocks i3lock | i3lock-fancy volumeicon-alsa neovim | vim fzy | fzf Fuzzy finder for terminal`
