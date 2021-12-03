#!/bin/bash

if ! command -v nvim &> /dev/null
then
	echo "Neovim is not installed. Installing PPA for unstable version (Ubuntu)"
	sudo add-apt-repository ppa:neovim-ppa/unstable
	sudo apt update
	sudo apt install neovim -y
fi

echo "Installing vim-plug"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

