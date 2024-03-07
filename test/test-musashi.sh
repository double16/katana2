#!/usr/bin/env bash

set -e

katana install musashi
katana start musashi

# jwt-demo
curl --fail --retry 5 http://localhost:3050/
curl --fail --retry 5 -k https://jwt-demo.test:8443/

# csp-dojo
curl --fail --retry 5 http://localhost:3041/
curl --fail --retry 5 -k https://csp-dojo.test:8443/

# api.cors
curl --fail --retry 5 http://localhost:3020/
curl --fail --retry 5 -k https://api.cors.test:8443/

# cors-dojo
curl --fail --retry 5 http://localhost:3021/
curl --fail --retry 5 -k https://cors-dojo.test:8443/
