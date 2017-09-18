#!/bin/sh

docker kill some-postgres
docker rm some-postgres

docker run --name some-postgres \
	-e POSTGRES_PASSWORD=postgres \
	-e POSTGRES_DB="ueberauth_example_dev" \
	-p 5432:5432 \
	-d postgres

docker ps
