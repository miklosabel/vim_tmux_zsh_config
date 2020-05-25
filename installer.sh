#!/bin/bash

# installing vim tmux zsh as root

 apt update

REQUIRED_PKG="curl"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo "
Checking for $REQUIRED_PKG: $PKG_OK"
if [ "" = "$PKG_OK" ]; then
     echo -n "$REQUIRED_PKG is not installed yet. Installing $REQUIRED_PKG." 
      apt-get --yes install $REQUIRED_PKG 
fi 

REQUIRED_PKG="git"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo "
Checking for $REQUIRED_PKG: $PKG_OK"
if [ "" = "$PKG_OK" ]; then
     echo -n "$REQUIRED_PKG is not installed yet. Installing $REQUIRED_PKG." 
      apt-get --yes install $REQUIRED_PKG 
fi 

REQUIRED_PKG="zsh"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo "
Checking for $REQUIRED_PKG: $PKG_OK "
if [ "" = "$PKG_OK" ]; then
     echo -n "$REQUIRED_PKG is not installed yet. Installing $REQUIRED_PKG"  
      apt-get --yes install $REQUIRED_PKG 
fi 
 
REQUIRED_PKG="tmux"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo "
Checking for $REQUIRED_PKG: $PKG_OK "
if [ "" = "$PKG_OK" ]; then
     echo -n "$REQUIRED_PKG is not installed yet. Installing $REQUIRED_PKG"  
      apt-get --yes install $REQUIRED_PKG 
fi 
 
REQUIRED_PKG="vim"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo  "
Checking for $REQUIRED_PKG: $PKG_OK "
if [ "" = "$PKG_OK" ]; then
     echo -n "$REQUIRED_PKG is not installed yet. Installing $REQUIRED_PKG"  
      apt-get --yes install $REQUIRED_PKG 
fi 
 
REQUIRED_PKG="ranger"
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
echo "
Checking for $REQUIRED_PKG: $PKG_OK "
if [ "" = "$PKG_OK" ]; then
     echo -n "$REQUIRED_PKG is not installed yet. Installing $REQUIRED_PKG"  
      apt-get --yes install $REQUIRED_PKG 
fi 
 
