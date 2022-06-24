#!/usr/bin/env bash

CURRENT=$(dirname "$0")
source "${CURRENT}"/common.sh
java -Xms1G -Xmx2g -Duser.timezone=GMT -Dspring.profiles.active="$1" -jar "${CURRENT}"/../target/${JARNAME}

