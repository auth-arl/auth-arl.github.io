#!/bin/bash

source <(curl -s https://raw.githubusercontent.com/auth-arl/auth-arl.github.io/master/scripts/install/arl_echo.sh)
source <(curl -s https://raw.githubusercontent.com/auth-arl/auth-arl.github.io/master/scripts/install/install_basics.sh)

set -e

MESSAGE="Installing Eigen Library..."; blue_echo
MESSAGE="Downloading  a local copy of the latest Eigen (v3.3.4)"; blue_echo

mkdir -p $AUTHARL_CORE_DIR/deps
cd $AUTHARL_CORE_DIR/deps

if [ -d eigen3 ]; then
  rm -rf eigen3
fi

wget https://auth-arl.github.io/deps/eigen-3.3.4.tar.gz > /dev/null
tar xvf eigen-3.3.4.tar.gz > /dev/null
rm -rf eigen-3.3.4.tar.gz
mv eigen-eigen-5a0156e40feb eigen3
cd ..

MESSAGE="Eigen Successfully installed."; green_echo
set +e
