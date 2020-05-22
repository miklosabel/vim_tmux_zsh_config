#!/bin/bash -

apt install -y zsh
apt install -y curl  # TODO check if installed
apt install -y git   # TODO check if installed
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -n "Now you can copy zshrc to ~"
