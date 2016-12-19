#!/bin/bash
CA_KEY=local/ca.key
if [ -z "$1" ]; then
  echo "Defaulting to key location 'local/ca.key'"
else
  CA_KEY=$1
fi

docker build -t https-proxy --build-arg cakey=$CA_KEY .
