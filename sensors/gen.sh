#!/usr/bin/env bash
set -e

FOLDER=sensor

rm -rf $FOLDER
mkdir -p $FOLDER

protoc -I=/usr -I=proto/ --go_out=plugins=grpc:$FOLDER proto/*.proto

cp go.mod $FOLDER/go.mod