default: build

build:
	docker run --rm -v "${PWD}":"${PWD}" -w "${PWD}" -e CGO_ENABLED=0 -e GOOS=linux golang:1.7 go build -a -ldflags '-w -s' -o dumpenv .

docker_build: build
	docker build -t jswoods/dumpenv:latest .

docker_push: docker_build
	docker push jswoods/dumpenv:latest
