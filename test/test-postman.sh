#!/usr/bin/env bash

set -e

postman --version | grep -q '.' && exit 0

katana install postman

postman --version | grep -q '.'
