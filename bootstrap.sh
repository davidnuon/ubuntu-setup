#!/bin/bash

# Assume sudo but keep track of 
# current user
if [[ $EUID != 0 ]]; then
	sudo "$0" `whoami`
	exit $?
fi

CURRENT_USER=$1

touch .env
source .env

echo "Grab updates..."
apt-get update

echo "Installing tools..."
apt-get install -y git vim python3-pip gnome-tweaks

echo "Setting up git..."
su $CURRENT_USER -c "git config --global user.name $GIT_USERNAME"
su $CURRENT_USER -c "git config --global user.email $GIT_EMAIL"

echo "Installing ansible..."
pip3 install ansible
