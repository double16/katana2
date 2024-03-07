#!/usr/bin/env bash

set -e

# FIXME: install minikube

katana install arrrspace

curl --fail --retry 5 --retry-all-errors http://arrrspace.test:80/
curl --fail --retry 5 --retry-all-errors http://arrrspace.wtf:80/
curl --fail --retry 5 --retry-all-errors http://api.arrrspace.test:80/
curl --fail --retry 5 --retry-all-errors http://api.arrrspace.wtf:80/
