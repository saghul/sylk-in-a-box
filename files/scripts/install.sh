#!/bin/bash

set -e
source /files/scripts/helpers
set -x


$minimal_apt_get_install sylkserver-webrtc-gateway nodejs nodejs-legacy npm git-core
npm install -g yarn

mkdir -p /opt
pushd /opt
git clone --depth=1 https://github.com/AGProjects/sylk-webrtc
cp /files/config/sylk/config.js sylk-webrtc/src/app/
pushd sylk-webrtc
yarn install
node_modules/.bin/gulp build --type dev
popd
popd
