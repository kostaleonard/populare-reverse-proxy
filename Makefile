VERSION=$(shell cat VERSION)

all: docker_build

docker_build:
	@echo Building $(VERSION) and latest
	docker build -t kostaleonard/populare-reverse-proxy:latest -t kostaleonard/populare-reverse-proxy:$(VERSION) .

docker_push:
	@echo Pushing $(VERSION) and latest
	docker push kostaleonard/populare-reverse-proxy:latest
	docker push kostaleonard/populare-reverse-proxy:$(VERSION)
