# y Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.M
# linux.sh
This is a scripting file that adds the contents of etc/vimrc to the file .vimrc in the home directory
# cleanup.sh
This is a scripting file that removes the .vimrc file from the home directory and deletes the .TRASH directory that the linux.sh file created
# Makefile
This file runs linux.sh with clean as a target, then runs clean.sh
