#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# sed -i 's#192.168.1.1#10.0.0.1#g' package/base-files/files/bin/config_generate #定制默认IP
# sed -i 's/luci-lib-ipkg/luci-base/g' package/feeds/kenzok/luci-app-store/Makefile
sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings #取消系统默认密码
# sed -i 's/mosdns_neo/mosdns/g' openwrt/feeds/kenzok/luci-app-mosdns/Makefile  #mosdns修复
# sed -i 's/mosdns_neo/mosdns/g' openwrt/feeds/kenzok/mosdns/Makefile

# rm -rf feeds/packages/net/mosdns && cp -rf feeds/kenzok/mosdns feeds/packages/net/mosdns
# sed -i 's/mosdns-neo/mosdns/g' feeds/kenzok/luci-app-mosdns/Makefile
# sed -i 's/mosdns-neo/mosdns/g' feeds/kenzok/mosdns/Makefile
# sed -i 's/mosdns-neo/mosdns/g' feeds/packages/net/mosdns/Makefile
