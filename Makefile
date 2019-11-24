build: bootstrap core

bootstrap:
	./bootstrap.sh

core:
	ansible-playbook --ask-become-pass \
		-i inventory playbooks/core.yml
