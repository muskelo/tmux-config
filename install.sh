#!/bin/bash

# Install tmux config

# data ------------>

# constant
PROGNAME=$(basename $0)
# variables
config_path="$HOME/.config/tmux"
repo_url=

# functions ---------->

usage () {
    echo "$PROGNAME: usage: $PROGNAME [--path config_path]"
}

handle_argumets (){
    while [[ -n $1 ]]; do
        case $1 in
            --path) config_path=$2
                shift
                ;;
            -h) usage
                exit
                ;;
            *)  usage
                exit 1
                ;;
        esac
        shift
    done
}

# script --------------->

echo "Старт автонастройки tmux."

handle_argumets

# install oh my tmux
if ! [ -d "$HOME/.tmux"]
then
    git clone https://github.com/gpakosz/.tmux.git $HOME/.tmux
    ln -s -f $HOME/.tmux/.tmux.conf  $HOME/.tmux.conf
fi

# create symlink to config
ln -sf $install_path/.tmux.conf.local $HOME/.tmux.conf.local
