#!/bin/sh

#TODO check if anything is installed

CURRENT_USER=$(who am i | awk '{print $1}')

echo -n "
$CURRENT_USER"

# install vim 
apt install -y vim 

# install pathogen
apt install -y curl
mkdir -p /home/"$CURRENT_USER"/.vim/autoload ~/.vim/bundle && \
curl -LSso /home/"$CURRENT_USER"/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git /home/"$CURRENT_USER"/.vim/bundle/Vundle.vim


echo -n "Now you can copy the vimrc file to ~ and than run :Plugininstall in vim"
