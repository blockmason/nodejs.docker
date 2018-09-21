.PHONY: build

IMAGE_NAME=blockmason/nodejs
IMAGE_VERSION=$(shell perl -n -e'/NODEJS_VERSION="([^"]+)"/ && print "$$1";' < Dockerfile)-aws

build:
	docker build -t $(IMAGE_NAME):$(IMAGE_VERSION) .
