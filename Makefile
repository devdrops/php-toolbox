SHELL := '/bin/bash'

GIT_LAST_COMMIT_HASH := $(shell git rev-parse --short HEAD)
CURRENT_DATE_GMT := $(shell date +"%Y-%m-%dT%H:%M:%S_GMT%Z")
BASE := "docker run -ti --rm devdrops/php-toolbox:$1"

develop:
	@echo "Building tag 'develop'"
	docker build \
		--build-arg BUILD_VERSION=develop \
		--no-cache \
		-t devdrops/php-toolbox:develop .

latest:
	@echo "Building tags 'latest' and '$(GIT_LAST_COMMIT_HASH)'"
	docker build \
		--build-arg BUILD_VERSION=develop \
		--build-arg VCS_REF=$(GIT_LAST_COMMIT_HASH) \
		--build-arg BUILD_DATE=$(CURRENT_DATE_GMT) \
		--build-arg BUILD_VERSION=$(GIT_LAST_COMMIT_HASH) \
		--no-cache \
		-t devdrops/php-toolbox:latest \
		-t devdrops/php-toolbox:$(GIT_LAST_COMMIT_HASH) .

push:
	@echo "Pushing tags 'latest' and '$(GIT_LAST_COMMIT_HASH)'"
	docker push devdrops/php-toolbox:latest
	docker push devdrops/php-toolbox:$(GIT_LAST_COMMIT_HASH)


.PHONY: develop latest push
