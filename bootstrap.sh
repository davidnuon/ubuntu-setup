#!/bin/bash

# Assume sudo but keep track of 
# current user
if [[ $EUID != 0 ]]; then
	sudo "$0" `whoami`
	exit $?
fi

CURRENT_USER=$1

echo "Grab updates..."
apt-get update

#echo "Installing snapd"
#apt-get install snapd

echo "Installing tools..."
apt-get install -y python3-pip

echo "Installing ansible..."
pip3 install ansible
