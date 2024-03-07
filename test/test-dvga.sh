#!/usr/bin/env bash

set -e

katana install dvga

curl --fail http://localhost:5013/
curl --fail -k https://dvga.test:8443/
