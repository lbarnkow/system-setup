#!/bin/bash

echo "Installing prerequisites: git..."
read -p "Press enter to continue"
sudo apt install --assume-yes git

echo ""
echo "Cloning github.com/lbarnkow/system-setup repo..."
read -p "Press enter to continue"
git clone git@github.com:lbarnkow/system-setup.git ~/.system-setup 

#echo "Creating python virtual env..."
#python3 -m venv .venv



