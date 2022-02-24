#!/bin/bash

# Install zsh config

# Осторожно, можно потерять текущие конфиги
ln -sf $HOME/.config/tmux/.tmux.conf.local $HOME/.tmux.conf.local

# install tmux
sudo apt-get install tmux -y
# install oh my tmux
if ! [ -d "$HOME/.tmux"]
then
    git clone https://github.com/gpakosz/.tmux.git $HOME/.tmux
    ln -s -f $HOME/.tmux/.tmux.conf  $HOME/.tmux.conf
fi
