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

# sed -i 's#192.168.1.1#192.168.2.1#g' package/base-files/files/bin/config_generate #定制默认IP
#sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-settings #取消系统默认密码


# rm -rf feeds/helloworld/v2ray-geodata && cp -rf package/v2ray-geodata feeds/helloworld/v2ray-geodata
# rm -rf feeds/small/v2ray-geodata && cp -rf package/v2ray-geodata feeds/small/v2ray-geodata
# rm -rf feeds/packages/net/mosdns && cp -rf feeds/kenzok/mosdns feeds/packages/net/mosdns
# sed -i 's/mosdns-neo/mosdns/g' feeds/kenzok/luci-app-mosdns/Makefile
# sed -i 's/mosdns-neo/mosdns/g' feeds/kenzok/mosdns/Makefile
# sed -i 's/mosdns-neo/mosdns/g' feeds/packages/net/mosdns/Makefile
# sed -i '10c KERNEL_PATCHVER:=4.19' target/linux/rockchip/Makefile     #R5s 定制内核
