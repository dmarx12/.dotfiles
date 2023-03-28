#!/bin/bash

#removes the .vimrc from the home directory
rm -f ~/.vimrc

#removes the below line from the .bashrc file
sed -i "source ~/.dotfiles/bashrc_custom" ~/.bashrc

#removes the trash directory if it exists in the home directory
rm -rf ~/.TRASH
