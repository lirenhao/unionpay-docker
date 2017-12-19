#!/bin/bash
cd "$(dirname "$0")"
docker stack deploy --compose-file apps/docker-compose.yml unionApps
docker stack services unionApps