APP?=$(shell basename $(shell git remote get-url origin))
APP_VER?=0.0.2
REGISTRY?=olukyanenko
VERSION?=$(shell git describe --tags --abbrev=0)-$(shell git rev-parse --short HEAD)
TARGETOS?=linux
TARGETARCH?=arm64
IMAGE_TAG?=$(shell echo ${REGISTRY}/${APP}:${VERSION}-${TARGETOS}-${TARGETARCH} | tr A-Z a-z)


image: 
	docker build -f ./docker/8.3/Dockerfile -t ${IMAGE_TAG} .

push:
	docker push ${IMAGE_TAG}

clean:
	docker rmi ${IMAGE_TAG}