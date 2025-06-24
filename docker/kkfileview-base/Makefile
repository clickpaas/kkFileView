all: build
image=registry.bizsaas.net/keking/kkfileview-base:4.4.0
build:
	docker build -t $(image) .
push:
	docker buildx build --pull --platform linux/amd64,linux/arm64 -t $(image) . --push
inspect:
	docker buildx imagetools inspect $(image)