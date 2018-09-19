#!/bin/bash

source <(curl -s https://raw.githubusercontent.com/auth-arl/auth-arl.github.io/master/scripts/install/arl_echo.sh)
source <(curl -s https://raw.githubusercontent.com/auth-arl/auth-arl.github.io/master/scripts/install/install_basics.sh)
source <(curl -s https://raw.githubusercontent.com/auth-arl/auth-arl.github.io/master/scripts/install/install_eigen.sh)
source <(curl -s https://raw.githubusercontent.com/auth-arl/auth-arl.github.io/master/scripts/install/install_armadillo.sh)

set -e

sudo apt install apt-transport-https

MESSAGE="Installing AUTh-ARL Core"; blue_echo
wget -O - http://auth-arl.github.io/debian/autharl.gpg.key|apt-key add -
wget http://auth-arl.github.io/debian/autharl.list
sudo mv autharl.list /etc/apt/sources.list.d/
sudo apt update
sudo apt install ros-kinetic-autharl-core
MESSAGE="AUTh-ARL Core Successfully installed."; green_echo
set +e
