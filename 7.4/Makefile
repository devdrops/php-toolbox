# ------------------------------------------------------------------------------------------------------
#  Variables and arguments required
SHELL := '/bin/bash'
.DEFAULT_GOAL := help
GIT_LAST_COMMIT_HASH := $(shell git rev-parse --short HEAD)
CURRENT_DATE_GMT := $(shell date +"%Y-%m-%dT%H:%M:%S_GMT%Z")
VERSION := $(shell git describe --tags --always)
# ------------------------------------------------------------------------------------------------------


# ------------------------------------------------------------------------------------------------------
develop: ## Build '*-dev' tag, including Xdebug.
	@echo "Building tag '7.4-dev'"
	docker build \
		--build-arg VCS_REF=$(GIT_LAST_COMMIT_HASH) \
		--build-arg BUILD_DATE=$(CURRENT_DATE_GMT) \
		--build-arg BUILD_VERSION=7.4-dev \
		--build-arg VERSION="$(VERSION)" \
		--build-arg INSTALL_XDEBUG=true \
		-t devdrops/php-toolbox:7.4-dev .
# ------------------------------------------------------------------------------------------------------
build: ## Build the official tag.
	@echo "Building tag '7.4'"
	docker build \
		--build-arg VCS_REF=$(GIT_LAST_COMMIT_HASH) \
		--build-arg BUILD_DATE=$(CURRENT_DATE_GMT) \
		--build-arg BUILD_VERSION=7.4 \
		--build-arg VERSION="$(VERSION)" \
		--build-arg INSTALL_XDEBUG=false \
		--no-cache --squash \
		-t devdrops/php-toolbox:7.4 .
# ------------------------------------------------------------------------------------------------------
debug: ## Build only the image with Xdebug.
	@echo "Build tag '7.4-xdebug'"
	docker build \
		--build-arg VCS_REF=$(GIT_LAST_COMMIT_HASH) \
		--build-arg BUILD_DATE=$(CURRENT_DATE_GMT) \
		--build-arg BUILD_VERSION=7.4-xdebug \
		--build-arg VERSION="$(VERSION)" \
		--build-arg INSTALL_XDEBUG=true \
		--no-cache \
		-t devdrops/php-toolbox:7.4-xdebug .
# ------------------------------------------------------------------------------------------------------
latest: build debug ## Build two images: 1. official tag, 2. official tag + Xdebug.
# ------------------------------------------------------------------------------------------------------
push: ## Pushes to Docker Hub two images: 1. official tag, 2. official tag + Xdebug.
	@echo "Pushing tags '7.4' and '7.4-xdebug'"
	docker push devdrops/php-toolbox:7.4
	docker push devdrops/php-toolbox:7.4-xdebug
# ------------------------------------------------------------------------------------------------------
release: latest push ## Build and deploy official tags.
# ------------------------------------------------------------------------------------------------------
shellcheck: ## Run shellcheck to scan sh files at ./helpers.
	find . -type f -name "*.sh" -exec shellcheck {} \;
# ------------------------------------------------------------------------------------------------------
hadolint: ## Lint ./Dockerfile with Hadolint
	docker run --rm -i hadolint/hadolint < Dockerfile
# ------------------------------------------------------------------------------------------------------
help: ## Print information of each Make task.
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
# ------------------------------------------------------------------------------------------------------


# ------------------------------------------------------------------------------------------------------
.PHONY: develop build debug latest push release shellcheck hadolint help
