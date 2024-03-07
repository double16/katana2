#!/usr/bin/env bash

set -e

# FIXME: install minikube

katana install arrrspace

curl --fail --retry 5 http://arrrspace.test:80/
curl --fail --retry 5 http://arrrspace.wtf:80/
curl --fail --retry 5 http://api.arrrspace.test:80/
curl --fail --retry 5 http://api.arrrspace.wtf:80/
