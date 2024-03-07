#!/usr/bin/env bash

set -e

sqlmap --version && exit 0

katana install sqlmap

sqlmap --version
