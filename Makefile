.PHONY: build run

build: SHELL := /bin/bash
build:
	docker build \
		--build-arg VCS_REF=$(VCS_REF) \
		--build-arg BUILD_DATE=$(BUILD_DATE) \
		-t devdrops/php-toolbox:$(TAG) .

run:
	docker run -it \
		-v $(CURDIR):/toolbox \
		-w /toolbox \
		devdrops/php-toolbox \
		$(COMMAND)
