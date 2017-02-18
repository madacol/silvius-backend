#!/bin/sh
if [ ! -e "silvius-tedlium-v1.0.tar.gz" ]; then
    wget http://voxhub.io/static/archive/silvius-tedlium-v1.0.tar.gz
fi
if [ ! -d "silvius-tedlium-v1.0" ]; then
    tar xf silvius-tedlium-v1.0.tar.gz
fi
./import.sh silvius-tedlium-v1.0
