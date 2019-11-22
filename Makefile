build: bootstrap desktop

bootstrap:
	./bootstrap.sh

desktop:
	ansible-playbook -i inventory playbooks/desktop.yml
