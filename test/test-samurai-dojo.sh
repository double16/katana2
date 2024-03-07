#!/usr/bin/env bash

set -e

katana install samurai-dojo

curl --fail http://localhost:30080/
curl --fail -k https://dojo-basic.test:8443/

curl --fail http://localhost:31080/
curl --fail -k https://dojo-scavenger.test:8443/
