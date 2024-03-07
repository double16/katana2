#!/usr/bin/env bash

set -e

trufflehog --version && exit 0

katana install trufflehog

trufflehog --version
