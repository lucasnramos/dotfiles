#!/bin/bash

echo 'Checking dependencies'
if [ ! command -v git &> /dev/null && ! command -v curl &> /dev/null]; then
    echo 'Need to install git and curl for this'
    sudo apt install git curl -y
fi
echo 'Looks good, gettings asdf'

git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.1

source ~/.bashrc

asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git

asdf install nodejs

