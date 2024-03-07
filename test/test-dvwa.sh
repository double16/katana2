#!/usr/bin/env bash

set -e

katana install dvwa
katana start dvwa

curl --fail --retry 5 http://localhost:31000/
curl --fail --retry 5 -k https://dvwa.test:8443/
