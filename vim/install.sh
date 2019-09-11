#!/bin/bash

# clone the vundle repo
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# delete the prev ~/.vimrc and install new one
rm -r ~/.vimrc && ln -s `pwd`/.vimrc ~/.vimrc

# install the plugins
vim +PluginInstall +qall

