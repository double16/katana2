#!/usr/bin/env bash

set -e

katana install dvga
katana start dvga

curl --fail --retry 5 http://localhost:5013/
curl --fail --retry 5 -k https://dvga.test:8443/
