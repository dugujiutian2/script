#!/bin/bash
set -xe

version=$1
filename=go${version}.linux-amd64.tar.gz

wget https://studygolang.com/dl/golang/${filename}


if [ -z "$1" ]; then
        echo "usage: ./install.sh go-package.tar"
        exit
fi

if [ -d "/usr/local/go" ]; then
        echo "Uninstalling old version..."
        sudo rm -rf /usr/local/go
fi
echo "Installing..."
sudo tar -C /usr/local -xzf ${filename}
echo "Done"

