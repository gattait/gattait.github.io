#!/usr/bin/env bash

ENV_BIN_DIR=${HOME}/pelican-env/bin

PELICAN=${ENV_BIN_DIR}/pelican
GHP_IMPORT=${ENV_BIN_DIR}/ghp-import

${PELICAN} content -s publishconf.py
${GHP_IMPORT} output -b master

git push origin master
