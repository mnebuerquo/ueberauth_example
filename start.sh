#!/bin/sh

mix deps.get && npm install

. ./secrets.sh
mix phoenix.server
