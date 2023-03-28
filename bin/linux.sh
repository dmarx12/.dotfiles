#!/bin/bash

#dumps an error if the operating system is not Linux, then exits
if (( uname != "Linux" )); then
	echo "Error: must be running linux" > linuxsetup.log
	exit
fi

#makes the .TRASH directory
mkdir -p ~/.TRASH

#changes .vimrc to .bup_vimrc if it exists
if [[ -f ~/.vimrc ]]; then
	mv ~/.vimrc ~/.bup_vimrc
	echo ".vimrc was changed to .bup_vimrc" >> linuxsetup.log
fi

#overwrites the contents of the .vimrc file
cat ./etc/vimrc > ~/.vimrc

#adds the statement to the end of .bashrc
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc
