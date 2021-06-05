#!/bin/bash

set -eu

CLOUDPROBER_VERSION="0.11.2"
CLOUDPROBER_DIST=cloudprober-v$CLOUDPROBER_VERSION-macos-x86_64

if ! [[ -f ./cloudprober ]]
then
        curl -sLO https://github.com/google/cloudprober/releases/download/v$CLOUDPROBER_VERSION/$CLOUDPROBER_DIST.zip
        unzip $CLOUDPROBER_DIST.zip
        cp $CLOUDPROBER_DIST/cloudprober .
        rm -rf $CLOUDPROBER_DIST.zip $CLOUDPROBER_DIST

fi

exec ./cloudprober --config_file cloudprober.cfg
