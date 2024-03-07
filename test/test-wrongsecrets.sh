#!/usr/bin/env bash

set -e

katana install wrongsecrets

curl --fail http://localhost:31500/
curl --fail -k https://wrongsecrets.test:8443/
