#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# git clone https://github.com/wx1wxc/luci-app-fileassistant package/fileassistant

# git clone https://github.com/QiuSimons/openwrt-mos package/mosdns
# git clone https://github.com/sbwml/v2ray-geodata package/geodata
# wget -P ./dl https://sources.immortalwrt.org/ipt2socks-1.1.3.tar.gz

#git clone https://github.com/sirpdboy/netspeedtest.git package/netspeedtest

pushd feeds/packages
adguardhome_version=`curl -s "https://api.github.com/repos/AdguardTeam/AdGuardHome/releases" | grep "tag_name" | head -n 1 | awk -F ":" '{print $2}' | sed 's/\"//g;s/,//g;s/ //g' | awk -F "v" '{print $2}'`
sed -ri "s/(PKG_VERSION:=)[^\"]*/\1$adguardhome_version/" net/adguardhome/Makefile
sed -i 's/release/beta/g' net/adguardhome/Makefile
sed -i 's/.*PKG_MIRROR_HASH.*/#&/' net/adguardhome/Makefile
sed -i '/init/d' net/adguardhome/Makefile
popd
