#!/usr/bin/env bash

set -e

katana install amoksecurity

curl --fail http://amoksecurity.test:80/
curl --fail http://amoksecurity.wtf:80/
