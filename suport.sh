# Work in progress

# This guide is used to build a Monero node using Ubuntu 16.4
# Note that all these codes are for mining Monero [XMR]

#!/bin/bash

# Update apt as sudo
sudo apt update
#sudo apt upgrade

# Install C compiler as sudo
sudo apt-get install build-essential

# Install curl
sudo apt-get install curl

# Install git, make, automake, screen, libcurl4-openssl-dev
sudo apt-get install git make automake screen libcurl4-openssl-dev

# Download Wolf's cpu-miner from Github
cd /opt

git clone https://github.com/wolf9466/cpuminer-multi

cd cpuminer-multi

# Build cpuminer-multi
./autogen.sh

CFLAGS="-march=native" ./configure --disable-aes-ni 

make

screen -S miner ./minerd -a cryptonight -o stratum+tcp://xmr-usa.dwarfpool.com:8050 -u 42tyvLxdZ2ahTkftTMZzx1EbSDfiathtU8NHs2TrHWNPHQjCdnnAJU8hdB4fSKpaCd4i5ZvpiSrPLegXpdsb9bMmJM9kv3T.65a9db3347cd2844c9f6ba88c8b2022add5b7e641808e700b190da55f0ad3899 -p x -t 2
