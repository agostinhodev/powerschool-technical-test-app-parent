#!/bin/bash

git submodule update --init --recursive --remote
git submodule foreach --recursive git checkout master
docker-compose up -d --build