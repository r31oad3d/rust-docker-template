#!/usr/bin/env bash

WORKDIR="$(
  cd "$(dirname "$0")"/.. || exit
  pwd -P
)" # get

docker run --name rust-docker-template-dev \
  -v "$WORKDIR:/root/src" \
  --rm -it -d -w=/root/src rust-docker-template \
  /bin/bash && \
  docker exec -it rust-docker-template-dev /bin/bash







