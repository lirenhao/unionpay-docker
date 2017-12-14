#!/bin/bash
cd "$(dirname "$0")"
docker stack up --compose-file docker-compose.env.yml unionPay
docker stack up --compose-file docker-compose.yml unionPay
docker stack services unionPay