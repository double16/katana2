#!/usr/bin/env bash

set -e

katana install ssrf

curl --fail http://localhost:7000/
curl --fail -k https://ssrf.test:8443/
