#!/bin/bash
set -e

if [ -z "$GITHUB_USER" ]; then
    export GITHUB_USER='dlemstra'
fi

if [ -z "$GITHUB_TOKEN" ]; then
    export GITHUB_TOKEN=$(cat /build/api.key.txt)
fi

build/shared/install.Magick.Native.sh ${GITHUB_USER} ${GITHUB_TOKEN} linux x64
