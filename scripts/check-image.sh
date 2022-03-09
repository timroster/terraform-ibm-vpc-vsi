#!/usr/bin/env bash

STATUS="$1"
NAME="$2"
ALLOW="$3"

RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m'

if [[ "${STATUS}" == "deprecated" ]] && [[ "${ALLOW}" == "false" ]]; then
  echo -e "${RED}Error:${NC} ${NAME} image is deprecated" >&2
  echo "   Run 'ibmcloud is images' to find a current image" >&2
  exit 1
elif [[ "${STATUS}" == "deprecated" ]]; then
  echo -e "${YELLOW}Warning:${NC} ${NAME} image is deprecated"
  echo "   Run 'ibmcloud is images' to find a current image"
fi
