
if ! command -v nvim &> /dev/null
then
    echo "Neovim is not installed. Installing from package manager"
    sudo apt install neovim -y
fi

echo "Installing vim-plug"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Finished"

