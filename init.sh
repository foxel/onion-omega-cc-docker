#!/bin/bash

[ -d source ] || git clone https://github.com/lede-project/source source
cd source
grep 'src-git onion' feeds.conf.default || \
    echo 'src-git onion https://github.com/OnionIoT/OpenWRT-Packages.git;omega2' >> feeds.conf.default
scripts/feeds update -a
scripts/feeds install -a

make menuconfig

N=`nproc`

make -j$N tools/install
make -j$N toolchain/install


