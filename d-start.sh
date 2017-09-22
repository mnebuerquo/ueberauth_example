#!/bin/sh

docker-compose down

#rm -rf _build
#rm -rf deps
#rm -rf node_modules

#docker-compose rm

docker-compose build

docker-compose up -d login_app

/bin/sleep 3 # give container a chance to start up

docker-compose run login_app mix do deps.get, compile
docker-compose run login_app npm install

docker-compose restart login_app
