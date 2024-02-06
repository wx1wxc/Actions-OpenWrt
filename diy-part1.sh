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

git clone https://github.com/sirpdboy/netspeedtest.git package/netspeedtest
wget https://github.com/kenzok8/small-package/adguardhome package/adguardhome
wget https://github.com/kenzok8/small-package/filebrowser package/filebrowser
wget https://github.com/kenzok8/small-package/luci-app-adguardhome package/luci-app-adguardhome
wget https://github.com/kenzok8/small-package/luci-app-argone-config package/luci-app-argone-config
wget https://github.com/kenzok8/small-package/luci-app-dockerman package/luci-app-dockerman
wget https://github.com/kenzok8/small-package/luci-app-fileassistant package/luci-app-fileassistant
wget https://github.com/kenzok8/small-package/luci-app-mosdns package/luci-app-mosdns
wget https://github.com/kenzok8/small-package/luci-app-openclash package/luci-app-openclash
wget https://github.com/kenzok8/small-package/luci-app-wechatpush package/luci-app-wechatpush
wget https://github.com/kenzok8/small-package/luci-theme-argone package/luci-theme-argone
wget https://github.com/kenzok8/small-package/mosdns package/mosdns
