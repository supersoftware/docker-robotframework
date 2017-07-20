#!/bin/bash
set -e

# Set the defaults
DEFAULT_ROBOT_TESTS="false"

# Use default if none specified as env var
ROBOT_TESTS=${ROBOT_TESTS:-$DEFAULT_ROBOT_TESTS}

if [[ "${ROBOT_TESTS}" == "false" ]]; then
  echo "Error: Please specify the robot test or directory as env var ROBOT_TESTS"
  exit 1
fi

robot ${ROBOT_TESTS}