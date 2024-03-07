#!/usr/bin/env bash

set -e

katana install amoksecurity

curl --fail --retry 5 --retry-all-errors http://amoksecurity.test:80/
curl --fail --retry 5 --retry-all-errors http://amoksecurity.wtf:80/
