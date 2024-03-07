#!/usr/bin/env bash

set -e

katana install ssrf
katana start ssrf

curl --fail --retry 5 --retry-all-errors http://localhost:7000/
curl --fail --retry 5 --retry-all-errors -k https://ssrf.test:8443/
