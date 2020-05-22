#!/bin/sh

#TODO check if anything is installed

# install vim 
apt install -y vim 

# install pathogen
apt install -y curl
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install vundle
apt install -y git
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


echo -n "Now you can copy the vimrc file to ~ and than run :Plugininstall in vim"
