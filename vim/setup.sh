#!/bin/bash

params="-sf"
script_home="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln $params $script_home/vimrc $HOME/.vimrc

# Plugin Manager
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


vim -c ":PlugInstall"
