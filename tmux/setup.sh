#!/bin/bash

VERSION=2.6
params="-sf"
script_home="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Install:
# Option 1)
sudo apt-get install tmux

# # Option 2)
# (Note that this requires at least a working C compiler, make, autoconf,
# automake, pkg-config as well as libevent and ncurses libraries and headers.)
# sudo apt-get -y remove tmux
# sudo apt-get -y install wget tar libevent-dev libncurses-dev
# sudo apt-get -y install automake make pkg-config autoconf
# wget https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz
# tar xf tmux-${VERSION}.tar.gz
# rm -f tmux-${VERSION}.tar.gz
# cd tmux-${VERSION}
# ./configure
# make
# sudo make install
# cd -
# sudo rm -rf /usr/local/src/tmux-*
# sudo mv tmux-${VERSION} /usr/local/src

ln $params $script_home/tmux.conf $HOME/.tmux.conf

# Install Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install Tmux Plugins
tmux start-server
tmux new-session -d
~/.tmux/plugins/tpm/scripts/install_plugins.sh
tmux kill-server
