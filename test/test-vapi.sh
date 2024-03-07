#!/usr/bin/env bash

set -e

katana install vapi

curl --fail http://localhost:7000/
curl --fail -k https://vapi.test:8443/
