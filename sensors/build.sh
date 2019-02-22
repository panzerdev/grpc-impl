#!/usr/bin/env bash

docker run --rm -u `id -u $USER` -it -v $(pwd):$(pwd) -w $(pwd) grpc-go:3.6.1-1.18.0-1.11.5 ./gen.sh
cd sensor && go build
