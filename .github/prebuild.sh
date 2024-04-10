#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

dpkg --add-architecture $CROSS_DEB_ARCH
apt-get update
apt-get --assume-yes install make build-essential cmake gcc g++ wget lsb-release software-properties-common gnupg apt-transport-https ca-certificates

wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add -
wget https://apt.llvm.org/llvm.sh -O /tmp/llvm.sh
chmod +x /tmp/llvm.sh
/tmp/llvm.sh 12
apt-get -y install llvm-12-dev libclang-12-dev libc++-12-dev libc++abi-12-dev llvm-12-runtime

