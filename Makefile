ANSIBLE_DIR = provisioning
PLAYBOOK = $(ANSIBLE_DIR)/playbook.yaml
INVENTORY = $(ANSIBLE_DIR)/inventory.ini

.PHONY: all base desktop security check lint install-deps

all: base desktop security

base:
	cd $(ANSIBLE_DIR) && ansible-playbook playbook.yaml --tags base

desktop:
	cd $(ANSIBLE_DIR) && ansible-playbook playbook.yaml --tags desktop

security:
	cd $(ANSIBLE_DIR) && ansible-playbook playbook.yaml --tags security

check:
	cd $(ANSIBLE_DIR) && ansible-playbook playbook.yaml --check --diff

hardening:
	cd $(ANSIBLE_DIR) && ansible-playbook playbook.yaml --tags hardening

lint:
	cd $(ANSIBLE_DIR) && ansible-lint playbook.yaml

install-deps:
	ansible-galaxy collection install community.general kewlfft.aur
