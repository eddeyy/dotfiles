#!/bin/bash

params="-sf"

# Store where the script was called 
script_home="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

########################### Tmux #######################
sudo apt-get install tmux
tmux start-server
# create a new session but don't attach to it either
tmux new-session -d
# install the plugins
~/.tmux/plugins/tpm/scripts/install_plugins.sh
# killing the server is not required, I guess
tmux kill-server


########################### VIM ########################

# Add vim-plug. Necessary for vim plugins
if [ ! -f $HOME/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Compile YCM if installed.
if [ ! -f $HOME/.vim/bundle/youcompleteme ]; then
    /bin/bash $HOME/.vim/bundle/youcompleteme/install.sh
fi

vim -c 'PluginInstall'

########################## Fish #######################

# Install fish-shell
if [ ! -f $HOME/.config/fish ]; then
    sudo apt-get install fish
    # Install fisherman
    curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
    fish ./plungin_install.fish
fi


# Symlink all dotfiles to the home directory
for i in .vimrc .tmux.conf;
do
    ln $params $script_home/$i $HOME/$i
done

ln $params $script_home/config.fish $HOME/.config/fish/config.fsh
ln $params $script_home/fish_user_key_bindings.fish $HOME/.config/fish/functions/fish_user_key_bindings
