.PHONY: prepare

deps:
        ansible-galaxy install -r requirements.yml

prepare: deps
        ansible-playbook -i inventory.ini playbook.yml

deploy:
        ansible-playbook -i inventory.ini deploy.yml

edit-secrets:
        ansible-vault edit group_vars/webservers/vault.yml

check:
        ansible-playbook -i inventory.ini playbook.yml --syntax-check
        ansible-playbook -i inventory.ini deploy.yml --syntax-check

dry-run: deps
        ansible-playbook -i inventory.ini playbook.yml --check --diff