#!/usr/bin/env bash

set -e

/opt/samurai/ZAP_2.14.0/zap.sh -cmd -version && exit 0

katana install zap

/opt/samurai/ZAP_2.14.0/zap.sh -cmd -version
