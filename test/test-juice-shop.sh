#!/usr/bin/env bash

set -e

katana install juice-shop
katana start juice-shop

curl --fail --retry 5 --retry-all-errors http://localhost:3000/
curl --fail --retry 5 --retry-all-errors -k https://juice-shop.test:8443/
