#!/bin/bash

rm -f python.zip
docker build -t python_build ./lambda
docker run -dit --name python_zip --entrypoint /bin/bash python_build
docker cp python_zip:/usr/src/app/python.zip ./
docker stop python_zip
docker rm python_zip
