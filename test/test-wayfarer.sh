#!/usr/bin/env bash

set -e

katana install wayfarer

curl --fail http://localhost:7000/
curl --fail -k https://wayfarer.test:8443/

curl --fail http://localhost:7001/
curl --fail -k https://api.wayfarer.test:8443/

curl --fail http://localhost:3002/
curl --fail -k https://auth.wayfarer.test:8443/
