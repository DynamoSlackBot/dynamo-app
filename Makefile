APP?=$(shell basename $(shell git remote get-url origin))
REGISTRY?=olukyanenko
VERSION?=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS?=linux
TARGETARCH?=amd64
IMAGE_TAG?=$(shell echo ${REGISTRY}/${APP}:${VERSION}-${TARGETOS}-${TARGETARCH} | tr A-Z a-z)


image: 
	docker build ./docker/8.3 -t ${IMAGE_TAG}

push:
	docker push ${IMAGE_TAG}

clean:
	docker rmi ${IMAGE_TAG}