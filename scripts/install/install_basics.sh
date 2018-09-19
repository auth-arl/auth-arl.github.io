#!/bin/bash

source <(curl -s https://raw.githubusercontent.com/auth-arl/auth-arl.github.io/master/scripts/install/arl_echo.sh)

set -e
sudo apt update
sudo apt install -y wget tar

AUTHARL_CORE_DIR=${PWD}

set +e
