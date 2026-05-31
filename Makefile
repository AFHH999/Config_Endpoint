PLAYBOOK = playbook.yaml
INVENTORY = inventory.ini

.PHONY: all base desktop security check lint install-deps

all: base desktop security

base:
	ansible-playbook -i $(INVENTORY) $(PLAYBOOK) --tags base

desktop:
	ansible-playbook -i $(INVENTORY) $(PLAYBOOK) --tags desktop

security:
	ansible-playbook -i $(INVENTORY) $(PLAYBOOK) --tags security

check:
	ansible-playbook -i $(INVENTORY) $(PLAYBOOK) --check --dif

lint:
	ansible-lint $(PLAYBOOK)

install-deps:
	ansible-galaxy collection install community.general kewlfft.aur
