#!/usr/bin/env bash

set -e

katana install amoksecurity

curl --fail --retry 5 http://amoksecurity.test:80/
curl --fail --retry 5 http://amoksecurity.wtf:80/
