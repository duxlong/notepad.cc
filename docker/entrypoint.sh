#!/bin/sh

# 如果 node_modules 目录不存在，则执行 npm install
if [ ! -e /opt/notepad/node_modules ]
then
  # 淘宝源
  npm install --registry=https://registry.npm.taobao.org
fi

npm start
