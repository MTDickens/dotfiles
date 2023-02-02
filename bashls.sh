#!/bin/bash

files="bashrc zshrc vimrc"

for file in $files; do
	rm ~/.$file
	ln -s ~/dotfiles/.$file ~/.$file
done
