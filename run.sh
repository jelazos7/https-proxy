#!/bin/bash
docker rm -f https-proxy
docker run -d --name https-proxy \
    -v $(pwd)/local/ca.crt:/etc/ssl/certs/ca.crt \
    -v $(pwd)/local/ca.key:/etc/ssl/private/ca.key \
    -p 18077:18077 \
    -p 18101:18101 \
    -p 18102:18102 \
    https-proxy
