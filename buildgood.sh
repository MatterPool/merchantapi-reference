#!/bin/sh

mkdir -p build
mkdir -p build/windows
mkdir -p build/linux
mkdir -p build/raspian

go build -o build/darwin/${PROG_NAME}_${VER} -ldflags="-X main.commit=${GIT_COMMIT}"
env GOOS=linux GOARCH=amd64 go build -o build/linux/${PROG_NAME}_${VER} -ldflags="-s -w -X main.commit=${GIT_COMMIT}"
env GOOS=linux GOARCH=arm go build -o build/raspian/${PROG_NAME}_${VER} -ldflags="-s -w -X main.commit=${GIT_COMMIT}"
env GOOS=windows GOARCH=386 go build -o build/windows/${PROG_NAME}_${VER} -ldflags="-s -w -X main.commit=${GIT_COMMIT}"



