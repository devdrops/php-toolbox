SHELL := '/bin/bash'

GIT_LAST_COMMIT_HASH := $(shell git rev-parse --short HEAD)
CURRENT_DATE_GMT := $(shell date +"%Y-%m-%dT%H:%M:%S_GMT%Z")

develop:
	@echo "Building tag '8.2-dev'"
	docker build \
		--build-arg BUILD_VERSION=8.2-dev \
		--no-cache \
		-t devdrops/php-toolbox:8.2-dev .

latest:
	@echo "Building tags 'latest' and '8.2'"
	docker build \
		--build-arg VCS_REF=$(GIT_LAST_COMMIT_HASH) \
		--build-arg BUILD_DATE=$(CURRENT_DATE_GMT) \
		--build-arg BUILD_VERSION=$(GIT_LAST_COMMIT_HASH) \
		--no-cache \
		-t devdrops/php-toolbox:latest \
		-t devdrops/php-toolbox:8.2 .

push:
	@echo "Pushing tags 'latest' and '8.2'"
	docker push devdrops/php-toolbox:latest
	docker push devdrops/php-toolbox:8.2


.PHONY: develop latest push
