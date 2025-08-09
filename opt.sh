#!/bin/bash
#=================================================
# this script is from https://github.com/lunatickochiya/Lunatic-s805-rockchip-Action
# Written By lunatickochiya
# QQ group :286754582  https://jq.qq.com/?_wv=1027&k=5QgVYsC
#=================================================


# add luci
function add_aria2_packages() {
echo "$(cat package-configs/aria2.config)" >> sdk/.config

}

function add_curl_packages() {
echo "$(cat package-configs/curl.config)" >> sdk/.config

}


function add_openssl_packages() {
echo "$(cat package-configs/openssl.config)" >> sdk/.config

}

function add_openvpn_packages() {
echo "$(cat package-configs/openvpn.config)" >> sdk/.config

}


if [ "$1" == "aria2" ]; then
add_aria2_packages
elif [ "$1" == "openssl" ]; then
add_openssl_packages
elif [ "$1" == "curl" ]; then
add_curl_packages
elif [ "$1" == "openvpn" ]; then
add_openvpn_packages
else
echo "Invalid argument"
fi
