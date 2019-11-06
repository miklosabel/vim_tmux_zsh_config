#!/bin/bash -
#===============================================================================
#
#          FILE: setup.sh
#
#         USAGE: ./setup.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 2019-06-07 13:15:18
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error

# Exit immediately if a command exits with an error.
# set -e

repo_dir=~/.setup_my_config


echo "################
Installing prerequisites
"
sudo apt install wget curl 
# sudo apt install git


# echo "################
# Cloning config repo from github.com/miklosabel
# "
# if [[ -f ${repo_dir} ]]; then
#     echo "Creating repo directory"
#     mkdir ${repo_dir}
# fi
# git clone https://github.com/miklosabel/setup_linux_config.git ${repo_dir}


echo "################
Installing zsh vim tmux ranger
"
sudo apt install zsh vim tmux ranger


echo "################
Installing oh-my-zsh and plugins
"
if [[ -f ${repo_dir}/.zshrc ]]; then
    sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    cp ${repo_dir}/.zshrc ~
    cat ${repo_dir}/.bashrc_start_zsh > ~/.bashrc
else
    echo "Vim config file does not exist in the repo"
fi

echo "################
Installing Vundle, pathogen and vim plugins
"
if [[ -f ${repo_dir}/.vimrc ]]; then
    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    cp ${repo_dir}/.vimrc ~
    # installing packages defined in .vimrc
    vim -c 'PluginInstall' -c 'qa!'
else
    echo "Vim config file does not exist in the repo"
fi

echo "################
Setting up tmux
"
if [[ -f ${repo_dir}/.tmux.conf ]]; then
    cp ${repo_dir}/.tmux.conf ~
else
    echo "Tmux config file does not exist in the repo"
fi


echo "################
Setting up ranger
"
if [[ -f ${repo_dir}/.rc.conf ]]; then
    cp ${repo_dir}/.rc.conf ~/.config/ranger/
else
    echo "Ranger config file does not exist in the repo"
fi


echo "################
Everything is succesfully installed.
"
