#!/bin/zsh

files="bashrc zshrc vimrc"

for file in $files; do
	ln -s ~/dotfiles/$file ~/.$file
done
