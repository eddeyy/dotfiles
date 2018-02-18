#!/bin/bash

script_home="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

/bin/bash /$script_home/fish/setup.sh
/bin/bash /$script_home/nvim/setup.sh
/bin/bash /$script_home/tmux/setup.sh
