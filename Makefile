.PHONY: prepare

deps:
        ansible-galaxy install -r requirements.yml

prepare: deps
        ansible-playbook -i inventory.ini playbook.yml

deploy:
        ansible-playbook -i inventory.ini deploy.yml

check:
        ansible-playbook -i inventory.ini playbook.yml --syntax-check
        ansible-playbook -i inventory.ini deploy.yml --syntax-check

dry-run: deps
        ansible-playbook -i inventory.ini playbook.yml --check --diff