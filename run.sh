#!/bin/bash
docker rm -f https-proxy
docker run -d -p 7777:7777 -p 18101:18101 --name https-proxy https-proxy
