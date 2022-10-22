#!/bin/bash

cd api
docker compose build
docker compose up -d
wait
sleep 18;docker compose exec -T api rails db:migrate
wait
docker compose exec -T api rails db:seed