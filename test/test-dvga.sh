#!/usr/bin/env bash

set -e

katana install dvga
katana start dvga

curl --fail --retry 5 --retry-all-errors http://localhost:5013/
curl --fail --retry 5 --retry-all-errors -k https://dvga.test:8443/
