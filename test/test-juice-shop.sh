#!/usr/bin/env bash

set -e

katana install juice-shop
katana start juice-shop

curl --fail --retry 5 http://localhost:3000/
curl --fail --retry 5 -k https://juice-shop.test:8443/
