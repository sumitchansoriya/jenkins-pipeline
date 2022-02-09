#!/bin/bash

docker run --rm -v $PWD/my-app:/app -v /root/.m2/:/root/.m2//root/.m2/ -w /app maven:3-alpine "$@"
