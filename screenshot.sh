#!/usr/bin/env bash

set -eu

gitCommit=$(git rev-parse HEAD)
asciinema rec --overwrite out.rec -c="timeout -s SIGINT 3 $1"
docker run --rm -v "$PWD/ascii/":/tmp/ascii -v $PWD:/data "myascii:latest" -s 1 out.rec output.gif
mkdir -p .gitchapter/images/gitCommit/"$gitCommit"
cp ascii/1.png .gitchapter/images/gitCommit/"$gitCommit"/"$2".png
