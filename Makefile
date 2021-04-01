default: test

build:
	go build -v -o ./_bin/snake-golang

run: build
	./_bin/snake-golang

run_on_docker:
	docker build -t snake-golang . && docker run --rm -ti snake-golang

test:
	go test -v ./...
