#!/bin/bash

# Copying new jar to the build location
cp -f my-app/target/jb-hello-world-maven-0.1.0.jar jenkins/build/

echo "*********************************"
echo "******BUILDING DOCKER IMAGE******"
echo "*********************************"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
