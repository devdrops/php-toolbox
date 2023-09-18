SHELL := '/bin/bash'

GIT_LAST_COMMIT_HASH := $(shell git rev-parse --short HEAD)
CURRENT_DATE_GMT := $(shell date +"%Y-%m-%dT%H:%M:%S_GMT%Z")

develop:
	@echo "Building tag '7.4-dev'"
	docker build \
		--build-arg BUILD_VERSION=7.4-dev \
		--build-arg INSTALL_XDEBUG=true \
		--no-cache \
		-t devdrops/php-toolbox:7.4-dev .

latest:
	@echo "Building tag '7.4'"
	docker build \
		--build-arg VCS_REF=$(GIT_LAST_COMMIT_HASH) \
		--build-arg BUILD_DATE=$(CURRENT_DATE_GMT) \
		--build-arg BUILD_VERSION=$(GIT_LAST_COMMIT_HASH) \
		--build-arg INSTALL_XDEBUG=false \
		--no-cache \
		-t devdrops/php-toolbox:7.4 .
	@echo "Build tag '7.4-xdebug'"
	docker build \
		--build-arg VCS_REF=$(GIT_LAST_COMMIT_HASH) \
		--build-arg BUILD_DATE=$(CURRENT_DATE_GMT) \
		--build-arg BUILD_VERSION=$(GIT_LAST_COMMIT_HASH) \
		--build-arg INSTALL_XDEBUG=true \
		--no-cache \
		-t devdrops/php-toolbox:7.4-xdebug .

debug:
	@echo "Build tag '7.4-xdebug'"
	docker build \
		--build-arg VCS_REF=$(GIT_LAST_COMMIT_HASH) \
		--build-arg BUILD_DATE=$(CURRENT_DATE_GMT) \
		--build-arg BUILD_VERSION=$(GIT_LAST_COMMIT_HASH) \
		--build-arg INSTALL_XDEBUG=true \
		--no-cache \
		-t devdrops/php-toolbox:7.4-xdebug .

push:
	@echo "Pushing tags '7.4' and '7.4-xdebug'"
	docker push devdrops/php-toolbox:7.4
	docker push devdrops/php-toolbox:7.4-xdebug


.PHONY: develop latest push
