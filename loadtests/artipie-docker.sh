#!/bin/bash -e

if [ $# -ne 1 ]; then 
    echo "Usage: $0 port" && exit 1
fi
port="$1"

cd `dirname "$0"`

docker stop artipie || :
docker run -d --rm --name artipie -it -v "$PWD/root/etc/artipie.yaml:/etc/artipie.yml" -v "$PWD/root/var:/var/artipie"  --user 0:0 -p "$port":8080 artipie/artipie
