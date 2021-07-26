#!/bin/bash
set -euo pipefail

function die() {
	echo $1
	exit 1
}

F=$1
S=$1

if [ "x-f" == "x${F}" ]; then
	S=$2
fi

[ ! -d "roles/${S}" ] && die "No role found: ${S}"
[ ! -d "roles/${S}/tasks" ] && die "No role found: ${S}"
[ ! -e "roles/${S}/tasks/main.yml" ] && die "No role found: ${S}"

TASK=$(grep "^- name:" roles/${S}/tasks/main.yml | head -1 | cut -d\  -f3-)

if [ "x-f" == "x${F}" ]; then
	TASK="${S} : ${TASK}"
fi

echo ${TASK}
