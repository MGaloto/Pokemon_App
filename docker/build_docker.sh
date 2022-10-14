#!/bin/bash

echo "Build the docker"

docker build . --progress=plain \
               --build-arg QUARTO_VERSION=1.1.149 \
               --build-arg CONDA_ENV=flex_dashboard \
               --build-arg PYTHON_VER=3.8 \
               -t mgaloto/flexdashiny_01

if [[ $? = 0 ]] ; then
echo "Pushing docker..."
docker push mgaloto/flexdashiny_01
else
echo "Docker build failed"
fi