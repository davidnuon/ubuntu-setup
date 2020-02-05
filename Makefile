build: bootstrap core

bootstrap:
	./bootstrap.sh
core:
	CURRENT_USER=`whoami` ansible-playbook --ask-become-pass \
		-i inventory playbooks/core.yml
godot:
	CURRENT_USER=`whoami` ansible-playbook --ask-become-pass \
		-i inventory playbooks/godot.yml
haxe:
	CURRENT_USER=`whoami` ansible-playbook --ask-become-pass \
		-i inventory playbooks/haxe.yml

nodejs:
	CURRENT_USER=`whoami` ansible-playbook --ask-become-pass \
		-i inventory playbooks/nodejs.yml

qemu:
	CURRENT_USER=`whoami` ansible-playbook --ask-become-pass \
		-i inventory playbooks/qemu.yml
