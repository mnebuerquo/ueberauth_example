#!/bin/sh

echo "this script is deprecated"
exit 1

rm -rf _build
rm -rf deps
rm -rf node_modules

mix deps.get
mix compile
npm install

. ./secrets.sh
mix phoenix.server
