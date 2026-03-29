.PHONY: prepare

deps:
	ansible-galaxy install -r requirements.yml

prepare: deps
	ansible-playbook -i inventory.ini playbook.yml

check:
	ansible-playbook -i inventory.ini playbook.yml --syntax-check

dry-run: deps
	ansible-playbook -i inventory.ini playbook.yml --check --diff