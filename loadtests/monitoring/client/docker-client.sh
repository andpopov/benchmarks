#!/bin/bash
source ./.env
#docker-compose rm -s -f
ARTIPIE_USER="2021:2020" docker-compose up --abort-on-container-exit
