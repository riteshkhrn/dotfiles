#!/bin/bash

# clone the vundle repo
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# make the color scheme directory
mkdir ~/.vim/colors
# download the colorscheme
wget -L https://github.com/romainl/Apprentice/blob/master/colors/apprentice.vim -P ~/.vim/colors/

# delete the prev ~/.vimrc and install new one
rm -r ~/.vimrc && ln -s `pwd`/.vimrc ~/.vimrc

# install the plugins
vim +PluginInstall +qall

