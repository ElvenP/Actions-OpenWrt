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

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# 拉取 主题
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

git clone https://github.com/esirplayground/luci-theme-atmaterial-ColorIcon.git package/luci-theme-atmaterial-ColorIcon


#单独添加软件包
git clone https://github.com/lisaac/luci-app-dockerman package/dockerman
git clone https://github.com/ElvenP/luci-app-onliner package/onliner
git clone https://github.com/siwind/luci-app-wolplus package/luci-app-wolplus

# 替换默认主题为 luci-theme-argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci/Makefile

# 设置默认IP为 
sed -i 's/192.168.1.1/192.168.5.1/g' package/base-files/files/bin/config_generate

