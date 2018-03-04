#!/bin/sh
echo Building sparkdevo/href-counter:build

docker build --no-cache -t sparkdevo/href-counter:build . -f Dockerfile.build

docker create --name extract sparkdevo/href-counter:build
docker cp extract:/go/src/github.com/sparkdevo/href-counter/app ./app
docker rm -f extract

echo Building sparkdevo/href-counter:latest

docker build --no-cache -t sparkdevo/href-counter:latest .
