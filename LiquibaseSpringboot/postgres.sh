#!/usr/bin/env bash

CONTAINER_NAME=${1}-postgres
PORT=${2:-5432}

docker run -d --name $CONTAINER_NAME \
-p $PORT:5432 \
-e POSTGRES_USER=postgres \
-e POSTGRES_PASSWORD=postgres \
-e POSTGRES_DB=postgres \
--rm \
postgres:latest
