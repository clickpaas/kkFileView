all: build
image=registry.bizsaas.net/keking/kkfileview:4.4.0-cp
build:
        docker build -t $(image) .
push:
        docker buildx build --pull --platform linux/amd64,linux/arm64 -t $(image) . --push
inspect:
        docker buildx imagetools inspect $(image)