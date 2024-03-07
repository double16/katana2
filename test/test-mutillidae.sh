#!/usr/bin/env bash

set -e

katana install mutillidae
katana start mutillidae

curl --fail --retry 5 --retry-all-errors http://localhost:33081/
curl --fail --retry 5 --retry-all-errors -k https://mutillidae.test:8443/
