# This Makefile is meant to be used by people that do not usually work
# with Go source code. If you know what GOPATH is then you probably
# don't need to bother with make.

.PHONY: build test

build:
	go build -o build/ github.com/sammy007/open-ethereum-pool

test: build
	go test ./...
