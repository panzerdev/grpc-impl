#!/usr/bin/env bash

docker run --rm -u `id -u $USER` -it -v $(pwd):$(pwd) -w $(pwd) docker-private.panzer.zone/grpc-go:1.20.0-3.7.1-1.12.0 ./gen.sh
#docker run --rm -u `id -u $USER` -it -v $(pwd):$(pwd) -w $(pwd) docker-private.panzer.zone/grpc-go-gateway:1.20.0-3.7.1-1.12.0-1.7.0 ./gen.sh
cd sensor && go build
