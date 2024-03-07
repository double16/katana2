#!/usr/bin/env bash

set -e

katana install wrongsecrets
katana start wrongsecrets

curl --fail --retry 5 --retry-all-errors http://localhost:31500/
curl --fail --retry 5 --retry-all-errors -k https://wrongsecrets.test:8443/
