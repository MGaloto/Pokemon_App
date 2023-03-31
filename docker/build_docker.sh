#!/bin/bash

echo "Build the docker"

docker build . --progress=plain \
               -t mgaloto/flexdashiny_01

if [[ $? = 0 ]] ; then
echo "Pushing docker..."
docker push mgaloto/flexdashiny_01
else
echo "Docker build failed"
fi