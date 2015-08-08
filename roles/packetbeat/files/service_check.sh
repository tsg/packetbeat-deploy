#!/bin/bash

PROG=$1
is_running=`service $PROG status`

if [ "$is_running" != "$PROG is running." ]; then
  echo "$PROGis not running"
  service $PROG restart
else
  echo "$PROG is running"
fi
