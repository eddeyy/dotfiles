#!/bin/bash

params="-sf"

# Store where the script was called 
script_home="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Add solarized colors for vim if not present
if [ ! -f $HOME/.vim/colors/solarized.vim ]; then
     curl -fLo $HOME/.vim/colors/solarized.vim --create-dirs \
     https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim
fi

# Symlink all dotfiles to the home directory
for i in .vimrc .tmux.conf;
do
    ln $params $script_home/$i $HOME/$i
done
