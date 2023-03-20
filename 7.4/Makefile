SHELL := '/bin/bash'

GIT_LAST_COMMIT_HASH := $(shell git rev-parse --short HEAD)
CURRENT_DATE_GMT := $(shell date +"%Y-%m-%dT%H:%M:%S_GMT%Z")

develop:
	@echo "Building tag '7.4-dev'"
	docker build \
		--build-arg BUILD_VERSION=7.4-dev \
		--no-cache \
		-t devdrops/php-toolbox:7.4-dev .

latest:
	@echo "Building tag '7.4'"
	docker build \
		--build-arg VCS_REF=$(GIT_LAST_COMMIT_HASH) \
		--build-arg BUILD_DATE=$(CURRENT_DATE_GMT) \
		--build-arg BUILD_VERSION=$(GIT_LAST_COMMIT_HASH) \
		--no-cache \
		-t devdrops/php-toolbox:7.4 .

push:
	@echo "Pushing tag '7.4'"
	docker push devdrops/php-toolbox:7.4


.PHONY: develop latest push
