.PHONY: main init syntax_check lint_check boot run clean retag_latest

main: syntax_check lint_check

init:
	#if [ ! -d "ansible-retry" ]; then mkdir "ansible-retry"; fi
	ansible-galaxy install -f -p roles -r requirements.yml

syntax_check:
	ansible-playbook --syntax-check setup.yml

lint_check:
	ansible-lint --exclude=roles/ setup.yml

boot:
	vagrant up

run:
	vagrant provision

clean:
	rm -f ansible-retry/setup.retry setup.retry
	rm -f tests/build_result.*
	vagrant destroy -f

# Retag and push the latest tag.
retag_latest:
	sh bin/retag_latest.sh
