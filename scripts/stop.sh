#!/usr/bin/env bash

CURRENT=$(dirname "$0")
source "${CURRENT}"/common.sh

PID=`ps -ef | grep "${JARNAME}" | grep java | grep -v grep | awk '{print $2}'`
if [ -n "$PID" ]
then
    echo "killing  pid: $PID "
    kill -9 ${PID}
    echo "Done"
else
  echo "nothing to kill"
fi

