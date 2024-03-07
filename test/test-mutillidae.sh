#!/usr/bin/env bash

set -e

katana install mutillidae

curl --fail http://localhost:33081/
curl --fail -k https://mutillidae.test:8443/
