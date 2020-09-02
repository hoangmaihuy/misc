#!/bin/sh
sudo apt install vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

rm ~/.vimrc
ln -sv $(pwd)/dotfiles/.vimrc ~
