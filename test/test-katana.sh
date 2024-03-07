#!/usr/bin/env bash

set -e

katana install katana

curl --fail http://localhost:8087/
curl --fail -k https://katana.test:8443/
