.PHONY: run

MAKEPATH := $(abspath $(lastword $(MAKEFILE_LIST)))
PWD := $(dir $(MAKEPATH))

run:
	docker run -it \
		-v $(PWD):/toolbox \
		-w /toolbox \
		devdrops/php-toolbox \
		$(COMMAND)
