#!/bin/bash
cd "$(dirname "$0")"
docker network create --driver=overlay --attachable unionPay
docker stack deploy --compose-file docker-compose.env.yml unionPay
docker stack deploy --compose-file docker-compose.yml unionPay
docker stack services unionPay