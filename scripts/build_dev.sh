#!/usr/bin/env bash

WORKDIR="$(
  cd "$(dirname "$0")"/.. || exit
  pwd -P
)" # get the project dir

cargo clean

if [[ "$(docker images -q rust-docker-template 2>/dev/null)" == "" ]]; then
  docker build -t rust-docker-template -t rust-docker-template:latest "$WORKDIR/docker"
fi
