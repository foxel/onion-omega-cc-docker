#!/bin/bash

set -e

docker images omega_cc -q | grep '' || docker build --build-arg USER_ID=`id -u` --build-arg GROUP_ID=`id -g` -t omega_cc .

exec docker run --rm -v `pwd`:'/workspace/' -it omega_cc "$@"

