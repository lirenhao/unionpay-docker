#!/bin/bash
cd "$(dirname "$0")"
docker stack down unionPay 
rm -rf ./kafka ./mongo ./mysql