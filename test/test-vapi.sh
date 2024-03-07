#!/usr/bin/env bash

set -e

katana install vapi
katana start vapi

curl --fail --retry 5 http://localhost:7000/
curl --fail --retry 5 -k https://vapi.test:8443/
