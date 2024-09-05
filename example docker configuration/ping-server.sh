#!/bin/bash

docker compose --file ./ping-server/docker-compose.yml down
docker compose --file ./ping-server/docker-compose.yml pull
docker compose --file ./ping-server/docker-compose.yml up --detach
