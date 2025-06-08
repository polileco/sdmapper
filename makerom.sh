#!/usr/bin/env bash

if [[ -z $VERSION || -z $NEXTOR ]]; then
 echo "Variables not set."
 echo "Ex.: export VERSION=1.0.4b NEXTOR=2.1.2 && ./makerom.sh"
 exit 1
fi

if [[ -f ./firmware/sdmp${VERSION//./}.rom ]]; then
 echo "./firmware/sdmp${VERSION//./}.rom already exist. Delete it before make a new one."
 exit 1
fi
 
./mknexrom ./nextor/Nextor-${NEXTOR}.base.dat ./firmware/sdmp${VERSION//./}.rom \
  /d:device.bin \

exit 0
