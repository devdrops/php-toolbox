SHELL := '/bin/bash'

GIT_LAST_COMMIT_HASH := $(shell git rev-parse --short HEAD)
CURRENT_DATE_GMT := $(shell date +"%Y-%m-%dT%H:%M:%S_GMT%Z")

develop:
	@echo "Building tag 'develop'"
	docker build \
		--build-arg BUILD_VERSION=7.4-dev \
		--no-cache \
		-t devdrops/php-toolbox:7.4-dev .

latest:
	@echo "Building tags 'latest' and '7.4'"
	docker build \
		--build-arg VCS_REF=$(GIT_LAST_COMMIT_HASH) \
		--build-arg BUILD_DATE=$(CURRENT_DATE_GMT) \
		--build-arg BUILD_VERSION=$(GIT_LAST_COMMIT_HASH) \
		--no-cache \
		-t devdrops/php-toolbox:latest \
		-t devdrops/php-toolbox:7.4 .

push:
	@echo "Pushing tags 'latest' and '7.4'"
	docker push devdrops/php-toolbox:latest
	docker push devdrops/php-toolbox:7.4


.PHONY: develop latest push