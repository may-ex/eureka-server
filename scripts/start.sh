#!/usr/bin/env bash

CURRENT=$(dirname "$0")
source "${CURRENT}"/common.sh
java ${JAVA_OPTS} -Duser.timezone=GMT -Dspring.profiles.active="$1" -jar "${CURRENT}"/../target/${JARNAME}

