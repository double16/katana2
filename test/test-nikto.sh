#!/usr/bin/env bash

set -e

nikto --Version && exit 0

katana install nikto

nikto --Version
