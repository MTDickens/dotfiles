#!/bin/bash

files="bashrc zshrc vimrc gitconfig"

for file in $files; do
	rm ~/.$file
	ln -s ~/dotfiles/.$file ~/.$file
done
