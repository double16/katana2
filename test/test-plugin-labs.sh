#!/usr/bin/env bash

set -e

katana install plugin-labs
katana start plugin-labs

curl --fail --retry 5 --retry-all-errors http://localhost:33180/
curl --fail --retry 5 --retry-all-errors http://plugin-labs.wtf:80/
