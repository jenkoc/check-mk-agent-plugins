#!/bin/bash

if type speedtest-cli > /dev/null 2>&1 ; then
  CSV=$(speedtest-cli --csv)
  IFS=, VALUES=($CSV)
  PING=${VALUES[5]}
  DOWNLOAD=${VALUES[6]}
  UPLOAD=${VALUES[7]}
  SPONSOR=${VALUES[1]}
  SERVER=${VALUES[2]}
  echo "0 SpeedTest rta=$PING|if_out_bps=$UPLOAD|if_in_bps=$DOWNLOAD Connection to $SPONSOR $SERVER ping/upload/download: $PING/$UPLOAD/$DOWNLOAD"
fi