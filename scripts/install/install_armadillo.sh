#!/bin/bash

source <(curl -s https://raw.githubusercontent.com/auth-arl/auth-arl.github.io/master/scripts/install/arl_echo.sh)
source <(curl -s https://raw.githubusercontent.com/auth-arl/auth-arl.github.io/master/scripts/install/install_basics.sh)

set -e

MESSAGE="Installing Armadillo"; blue_echo

MESSAGE="Installing Armadillo Dependencies: cmake, OpenBLAS and LAPACK, wget, xz-utils..."; blue_echo
sudo apt-get update > /dev/null
sudo apt-get install -y cmake libopenblas-dev liblapack-dev wget xz-utils > /dev/null

MESSAGE="Downloading and building a local copy of the latest Armadillo (v8.300)"; blue_echo

mkdir -p $AUTHARL_CORE_DIR/deps
cd $AUTHARL_CORE_DIR/deps

if [ -d armadillo-8.300.1 ]; then
  rm -rf armadillo-8.300.1
fi

wget https://auth-arl.github.io/deps/armadillo-8.300.1.tar.xz > /dev/null
tar xvf armadillo-8.300.1.tar.xz > /dev/null
cd armadillo-8.300.1
cmake .
make
cd ..
rm -rf armadillo-8.300.1.tar.xz
cd ../..

MESSAGE="Armadillo Successfully installed."; green_echo
set +e
