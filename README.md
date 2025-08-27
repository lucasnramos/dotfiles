# Configuration files for Linux

## Dependencies

### Base dependencies

- stow
- git
- sysstat
- tmux
- ranger or nnn
- neovim (submodule)
- vim
- fzf

### For tiling window managers

- acpi (for laptop batteries)
- volumeicon-alsa
- i3-wm or i3-gaps
- i3blocks
- i3lock or i3lock-fancy
- awesomewm

# Xorg config directory for tearfree (Radeon or AMDGPU) Ubuntu

## Ubuntu based Distros

/usr/share/X11/xorg.conf.d/

## Fedora & Arch based Distros

/etc/X11/xorg.conf.d/

## Force AMDGPU driver to load - GRUB

GRUB_CMDLINE_LINUX_DEFAULT="quiet splash radeon.cik_support=0 amdgpu.cik_support=1 modprobe.blacklist=radeon"

## Bluetooth on Manjaro

Sometimes bluetooth does not start automatically on Manjaro. One fix working now is to unload and reload the btusb module.

```bash
sudo modprobe -r btusb
sudo modprobe btusb
```

See also:

[Bluetooth](https://wiki.archlinux.org/title/Bluetooth)
