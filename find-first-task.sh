#!/bin/bash
set -euo pipefail

# TODO: check for args - for each, do this
grep "^- name:" roles/$1/tasks/main.yml | head -1 | cut -d\  -f3-
