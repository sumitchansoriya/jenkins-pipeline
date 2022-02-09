#!/bin/bash

echo $PWD
WORKSPACE=/var/lib/jenkins/workspace/pipeline

docker run --rm -v $WORKSPACE/my-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
