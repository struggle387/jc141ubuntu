#!/bin/bash

## Copy .jc141rc to home directory ##
cp .jc141rc /home/$USER/

## Check if Wine is installed, if not install only 25.04 ftm ##
if ! command -v wine &> /dev/null; then
    echo "Wine installing..."
    sudo dpkg --add-architecture i386
    sudo mkdir -pm755 /etc/apt/keyrings
    wget -O - https://dl.winehq.org/wine-builds/winehq.key | sudo gpg --dearmor -o /etc/apt/keyrings/winehq-archive.key
    sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/plucky/winehq-plucky.sources
    sudo apt update
    sudo apt install --install-recommends winehq-staging -y
else
    echo "Wine is already installed."
fi

## Install jc141 and dwarfs dependencies ##
sudo apt install -y gcc g++ clang git ccache ninja-build cmake make bison flex fuse fuse3 pkg-config binutils-dev libacl1-dev libarchive-dev libbenchmark-dev libboost-chrono-dev libboost-context-dev libboost-filesystem-dev libboost-iostreams-dev libboost-program-options-dev libboost-regex-dev libboost-system-dev libboost-thread-dev libbrotli-dev libevent-dev libhowardhinnant-date-dev libjemalloc-dev libdouble-conversion-dev libiberty-dev liblz4-dev liblzma-dev libzstd-dev libxxhash-dev libmagic-dev libparallel-hashmap-dev librange-v3-dev libssl-dev libunwind-dev libdwarf-dev libelf-dev libfmt-dev libfuse3-dev libgoogle-glog-dev libutfcpp-dev libflac++-dev nlohmann-json3-dev alsa-base alsa-tools bubblewrap fuse-overlayfs

## Install dwarfs ##
wget https://github.com/mhx/dwarfs/releases/download/v0.12.4/dwarfs-0.12.4.tar.xz
tar -xvf dwarfs-0.12.4.tar.xz
cd dwarfs-0.12.4/
mkdir build/
cd build/
cmake .. -GNinja -DWITH_TESTS=ON -DWITH_LIBDWARFS=ON -DWITH_TOOLS=ON -DWITH_FUSE_DRIVER=ON
ninja
sudo ninja install

## Clean up ##
cd ../../
rm -rf dwarfs-0.12.4.tar.xz dwarfs-0.12.4/

echo "Installation and setup completed. "
