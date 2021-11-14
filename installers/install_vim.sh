
if ! command -v vim &> /dev/null
then
    echo "Vim is not installed. Installing from package manager"
    sudo apt install vim -y
fi

echo "Installing vim-plug"

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Finished"

vim -c "PlugInstall"
