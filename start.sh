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

if [ "$DEVELOPMENT" = true ] ; then
    git submodule foreach --recursive git checkout develop
    docker-compose -f docker-compose.development.yml up -d --build
else
    git submodule foreach --recursive git checkout master
    docker-compose -f docker-compose.production.yml up -d --build
fi
