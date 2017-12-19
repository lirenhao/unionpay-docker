#!/bin/bash
cd "$(dirname "$0")"
docker network create --driver=overlay --attachable unionPay
docker stack deploy --compose-file base/docker-compose.yml unionBase
docker stack services unionBase