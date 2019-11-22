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

GIT_USERNAME=${GIT_USERNAME:-user}
GIT_EMAIL=${GIT_EMAIL:-user@example.org}

echo "Grab updates..."
apt-get update

echo "Installing tools..."
apt-get install -y vim python3-pip gnome-tweaks

echo "Setting up git..."
su $CURRENT_USER -c "git config --global user.name $GIT_USERNAME"
su $CURRENT_USER -c "git config --global user.email $GIT_EMAIL"
su $CURRENT_USER -c "git config --global core.editor vim"

echo "Installing ansible..."
pip3 install ansible
