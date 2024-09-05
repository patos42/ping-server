#!/bin/bash

docker compose --file ./ping-server/docker-compose.yml down
docker compose --file ./ping-server/docker-compose.yml build
docker compose --file ./ping-server/docker-compose.yml up --detach
