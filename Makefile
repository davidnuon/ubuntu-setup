build: bootstrap desktop

bootstrap:
	./bootstrap.sh

desktop:
	ansible-playbook --ask-become-pass -i inventory playbooks/desktop.yml
