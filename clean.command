#!/bin/bash
cd "$(dirname "$0")"
docker stack down unionBase
docker stack down unionApps