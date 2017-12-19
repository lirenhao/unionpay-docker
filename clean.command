#!/bin/bash
cd "$(dirname "$0")"
docker network rm unionPay
docker stack down unionBase
docker stack down unionApps