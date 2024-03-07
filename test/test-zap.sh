#!/usr/bin/env bash

set -e

zaproxy -cmd -version && exit 0

katana install zap

zaproxy -cmd -version
