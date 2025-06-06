#!/bin/bash

echo "Installing os prerequisites..."
sudo apt install git python3-venv

echo ""
echo "Cloning github.com/lbarnkow/system-setup repo..."
read -p "Press enter to continue"
git clone git@github.com:lbarnkow/system-setup.git ~/.system-setup 
cd ~/.system-setup

echo ""
echo "Creating python virtual env..."
cd ansible
python3 -m venv .venv
. .venv/bin/activate

echo ""
echo "Installing python depedencies..."
pip install -r requirements.txt

