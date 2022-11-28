#
# Automation tasks with Makefile
#
# BUILD actions
# Local building
#
.PHONY: build
build:
	docker buildx build \
	--push \
	--platform=linux/amd64,linux/arm64 \
	-t kozhin/docker-php-fpm:7.4.33 \
	-f Dockerfile \
	.

#
# TODO: add auto-tests
#
# TEST actions
# Local testing
#
# .PHONY: test
# test:
# 	make test-images
