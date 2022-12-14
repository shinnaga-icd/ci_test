#!/bin/bash

# 引数処理 v:flutter vesion, p:flutter setup path
while getopts v:p: OPT
do
  case $OPT in
    "v" ) VER="$OPTARG" ;;
    "p" ) SET_PATH="$OPTARG" ;;
  esac
done


sudo apt update && sudo apt upgrade -y && sudo apt install -y ninja-build libgtk-3-dev

# 参考
# https://zenn.dev/k9i/articles/65ed8841d5e3ff

git clone https://github.com/flutter/flutter.git --depth 1 -b $VER $SET_PATH
echo "$SET_PATH/bin" >> $GITHUB_PATH

#wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.0.2-stable.tar.xz
#tar xf flutter_linux_3.0.2-stable.tar.xz
#mv flutter $GITHUB_WORKSPACE/
#echo "${GITHUB_WORKSPACE}/flutter/bin" >> $GITHUB_PATH
