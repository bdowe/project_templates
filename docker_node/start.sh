#!/bin/bash
app="docker.node-test"
docker build -t ${app} .
docker run -d -p 49160:8080 \
  --name=${app} \
  -v $PWD:/app ${app}