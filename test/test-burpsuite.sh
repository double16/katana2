#!/usr/bin/env bash

set -e

command -v burp && exit 0

katana install burpsuite

command -v burp
