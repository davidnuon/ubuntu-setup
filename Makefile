build: bootstrap core

bootstrap:
	./bootstrap.sh
core:
	CURRENT_USER=`whoami` ansible-playbook --ask-become-pass \
		-i inventory playbooks/core.yml
godot:
	CURRENT_USER=`whoami` ansible-playbook --ask-become-pass \
		-i inventory playbooks/godot.yml