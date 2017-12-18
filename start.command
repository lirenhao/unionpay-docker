#!/bin/bash
cd "$(dirname "$0")"
docker network create --driver=overlay --attachable unionPay
docker stack deploy --compose-file base/docker-compose.yml unionBase
docker stack deploy --compose-file apps/docker-compose.yml unionApps
docker stack services unionBase
docker stack services unionApps