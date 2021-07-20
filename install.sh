#!/bin/bash

mkdir -p ~/.config/nvim
mkdir -p ~/.local/

rm ~/.bash*
rm ~/.*profile*

stow src
