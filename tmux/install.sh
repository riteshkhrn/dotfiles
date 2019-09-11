#!/bin/bash

# clone the vundle repo
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# delete the prev ~/.vimrc and install new one
rm -r ~/.tmux.conf && ln -s `pwd`/.tmux.conf ~/.tmux.conf

# install the plugins
# TODO: Find an easy way to install plugins

