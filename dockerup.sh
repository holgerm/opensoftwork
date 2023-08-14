#!/bin/bash

if [ ! -f read_env.sh ]
then
	echo "File not found: read_env.sh"
        echo "  please create file read_env.sh and set all needed environment variables for docker-compose.yml"
	exit 1
fi

source ./read_env.sh

docker compose build
docker compose up -d

exit 0
