.PHONY: main boot run clean

main: run

init:
	#if [ ! -d "ansible-retry" ]; then mkdir "ansible-retry"; fi
	ansible-galaxy install -f -p roles -r requirements.yml

boot:
	vagrant up

run:
	vagrant provision

clean:
	rm -f ansible-retry/setup.retry setup.retry
	rm -f tests/build_result.*
	vagrant destroy -f

