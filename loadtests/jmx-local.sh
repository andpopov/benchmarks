#!/bin/bash -e
port=8081

cd `dirname "$0"`

duration="${1:-30}"

./artipie-docker.sh "$port"
./jmx-run.sh localhost "$port" "$duration"
docker stop artipie

