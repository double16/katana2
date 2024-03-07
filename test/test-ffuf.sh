#!/usr/bin/env bash

set -e

ffuf -V && exit 0

katana install ffuf

ffuf -V
