#!/usr/bin/env bash

CURRENT=$(dirname "$0")
source "${CURRENT}"/common.sh

bash "${CURRENT}"/stop.sh
java -Xms2G -Xmx2g -jar "${CURRENT}"/../target/${JARNAME} &

