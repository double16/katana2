#!/usr/bin/env bash

set -e

katana install plugin-labs

curl --fail http://localhost:33180/
curl --fail http://plugin-labs.wtf:80/
