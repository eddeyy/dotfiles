sudo apt-get-repository --remove ppa:fish-shell/release-2 -y
sudo apt-get remove fish -y

# Install fisherman (Plugin Manager for fish)
if [ ! -f ~/.config/fish ]; then
    sudo rm -r ~/.config/fish
fi

if [ ! -f ~/.config/fisherman ]; then
    sudo rm -r ~/.config/fisherman
fi
