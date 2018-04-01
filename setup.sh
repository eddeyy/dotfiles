#!/bin/bash

script_home="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo apt-get update
sudo apt-get install curl
sudo apt-get install git

/bin/bash /$script_home/fish/setup.sh
/bin/bash /$script_home/nvim/setup.sh
/bin/bash /$script_home/tmux/setup.sh
