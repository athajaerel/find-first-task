#!/bin/bash
set -euo pipefail

F=$1
S=$1

if [ "x-f" == "x${F}" ]; then
	S=$2
fi

TASK=$(grep "^- name:" roles/${S}/tasks/main.yml | head -1 | cut -d\  -f3-)

if [ "x-f" == "x${F}" ]; then
	TASK="${S} : ${TASK}"
fi

echo ${TASK}
