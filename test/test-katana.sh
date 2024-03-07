#!/usr/bin/env bash

set -e

katana install katana
katana start katana

curl --fail --retry 5 --retry-all-errors http://localhost:8087/
curl --fail --retry 5 --retry-all-errors -k https://katana.test:8443/
