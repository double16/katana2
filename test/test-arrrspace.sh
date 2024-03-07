#!/usr/bin/env bash

set -e

katana install arrrspace

curl --fail http://arrrspace.test:80/
curl --fail http://arrrspace.wtf:80/
curl --fail http://api.arrrspace.test:80/
curl --fail http://api.arrrspace.wtf:80/
