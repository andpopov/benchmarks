#!/bin/bash
source ./.env
#docker-compose rm -s -f
docker-compose up --abort-on-container-exit
