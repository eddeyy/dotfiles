#!/bin/bash

prams="-sf"
script_home="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo apt-get install neovim

ln $params $script_home/init.vim $HOME/.config/nvim/init.vim

# Plugin Manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

nvim -c ":PlugInstall"
