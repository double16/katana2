#!/usr/bin/env bash

set -e

katana install dvwa

curl --fail http://localhost:31000/
curl --fail -k https://dvwa.test:8443/
