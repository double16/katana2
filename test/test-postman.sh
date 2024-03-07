#!/usr/bin/env bash

set -e

command -v postman && exit 0

katana install postman

command -v postman

