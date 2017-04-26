#!/bin/bash

[ -d openwrt ] || git clone git://git.openwrt.org/15.05/openwrt.git
cd openwrt
grep 'src-git onion' feeds.conf.default || \
    echo 'src-git onion https://github.com/OnionIoT/OpenWRT-Packages.git' >> feeds.conf.default
scripts/feeds update -a

sed -i "/^CONFIG_TARGET_ar71xx_generic_/s/^/# /" .config
sed -i "/CONFIG_TARGET_ar71xx_generic_OMEGA/i CONFIG_TARGET_ar71xx_generic_OMEGA=y" .config

make defconfig

N=`nproc`

make -j$N tools/install
make -j$N toolchain/install


