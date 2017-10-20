#!/bin/bash

params="-sf"

# Store where the script was called 
script_home="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Add solarized colors for vim if not present
# if [ ! -f $HOME/.vim/colors/solarized.vim ]; then
#      curl -fLo $HOME/.vim/colors/solarized.vim --create-dirs \
#      https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim
# fi

# Add vim-plug. Necessary for vim plugins
if [ ! -f $HOME/.vim/autoload/plug.vim ]; then
    curl -fLo "$HOME/.vim/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
    
# Install fish-shell
if [ ! -f $HOME/.config/fish ]; then
    sudo apt-get install fish
    # Install fisherman
    curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
    fish plungin_install.fish
fi


# Symlink all dotfiles to the home directory
for i in .vimrc .tmux.conf;
do
    ln $params $script_home/$i $HOME/$i
done

ln $params $script_home/config.fish $HOME/.config/fish/config.fsh
