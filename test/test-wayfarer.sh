#!/usr/bin/env bash

set -e

katana install wayfarer
katana start wayfarer

curl --fail --retry 5 http://localhost:7000/
curl --fail --retry 5 -k https://wayfarer.test:8443/

curl --fail --retry 5 http://localhost:7001/
curl --fail --retry 5 -k https://api.wayfarer.test:8443/

curl --fail --retry 5 http://localhost:3002/
curl --fail --retry 5 -k https://auth.wayfarer.test:8443/
