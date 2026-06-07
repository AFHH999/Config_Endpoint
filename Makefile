ANSIBLE_DIR = provisioning
PLAYBOOK = $(ANSIBLE_DIR)/playbook.yaml
INVENTORY = $(ANSIBLE_DIR)/inventory.ini
TARGET ?= daily_driver

.PHONY: all base desktop security hardening check lint install-deps

all: base desktop security

base:
	cd $(ANSIBLE_DIR) && ansible-playbook -i $(INVENTORY) $(PLAYBOOK) -l $(TARGET) --tags base

desktop:
	cd $(ANSIBLE_DIR) && ansible-playbook -i $(INVENTORY) $(PLAYBOOK) -l $(TARGET) --tags desktop

security:
	cd $(ANSIBLE_DIR) && ansible-playbook -i $(INVENTORY) $(PLAYBOOK) -l $(TARGET) --tags security

hardening:
	cd $(ANSIBLE_DIR) && ansible-playbook -i $(INVENTORY) $(PLAYBOOK) -l $(TARGET) --tags hardening

check:
	cd $(ANSIBLE_DIR) && ansible-playbook -i $(INVENTORY) $(PLAYBOOK) -l $(TARGET) --check --diff

lint:
	cd $(ANSIBLE_DIR) && ansible-lint playbook.yaml

install-deps:
	ansible-galaxy collection install community.general kewlfft.aur
