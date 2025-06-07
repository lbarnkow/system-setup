#!/bin/bash

if [[ "$(id --user)" != "0" ]]; then
    echo "This setup needs root privileges; try sudo. :)"
    exit 1
fi

echo "Installing os prerequisites..."
apt install git python3-venv

echo ""
echo "Cloning github.com/lbarnkow/system-setup repo..."
read -p "Press enter to continue"
git clone https://github.com/lbarnkow/system-setup.git /root/.system-setup

echo ""
echo "Creating python virtual env..."
cd /root/
python3 -m venv .system-setup-venv
. .system-setup-venv/bin/activate

echo ""
echo "Installing python depedencies..."
cd /root/.system-setup/ansible
pip install -r requirements.txt
