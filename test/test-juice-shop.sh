#!/usr/bin/env bash

set -e

katana install juice-shop

curl --fail http://localhost:0/
curl --fail -k https://juice-shop.test:8443/
