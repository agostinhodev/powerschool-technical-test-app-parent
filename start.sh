#!/bin/bash

DEVELOPMENT=false

for arg in "$@"
do
    case $arg in
        --development)
        DEVELOPMENT=true
        shift
        ;;
        *)
        # Unknown option
        ;;
    esac
done

git submodule update --init --recursive --remote
git submodule foreach --recursive git checkout master

if [ "$DEVELOPMENT" = true ] ; then
    docker-compose -f docker-compose.development.yml up -d --build
else
    docker-compose -f docker-compose.production.yml up -d --build
fi
