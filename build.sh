#!/bin/bash
CA_KEY=local/ca.key
if [ -z "$1" ]; then
  echo "Defaulting to key location $CA_KEY"
else
  CA_KEY=$1
fi

DEFAULT_CONF=local/conf.d/default.conf
if [ -z "$2" ]; then
  echo "Defaulting to nginx conf $DEFAULT_CONF"
else
  DEFAULT_CONF=$2
fi

docker build -t https-proxy --build-arg cakey=$CA_KEY --build-arg defaultconf=$DEFAULT_CONF .
