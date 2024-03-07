#!/usr/bin/env bash

set -e

katana install samurai-dojo
katana start samurai-dojo

curl --fail --retry 5 http://localhost:30080/
curl --fail --retry 5 -k https://dojo-basic.test:8443/

curl --fail --retry 5 http://localhost:31080/
curl --fail --retry 5 -k https://dojo-scavenger.test:8443/
