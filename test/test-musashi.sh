#!/usr/bin/env bash

set -e

katana install musashi

# jwt-demo
curl --fail http://localhost:3050/
curl --fail -k https://jwt-demo.test:8443/

# csp-dojo
curl --fail http://localhost:3041/
curl --fail -k https://csp-dojo.test:8443/

# api.cors
curl --fail http://localhost:3020/
curl --fail -k https://api.cors.test:8443/

# cors-dojo
curl --fail http://localhost:3021/
curl --fail -k https://cors-dojo.test:8443/
