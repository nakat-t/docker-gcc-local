#!/bin/bash

set -eu

version=9

for cmd in gcc gcc-${version} g++ g++-${version}
do
  result=0
  output1=$(${cmd} -dumpversion 2>&1) || result=$?
  if [ ! "${result}" = "0" ]; then
    echo >&2 "ERROR: command '${cmd}' not found."
    exit ${result}
  fi
  output2=$(echo ${output1} | grep "${version}") || result=$?
  if [ ! "${result}" = "0" ]; then
    echo >&2 "ERROR: wrong version of command '${cmd}'."
    exit ${result}
  fi
done

for cmd in gcc-ar gcc-ar-${version}
do
  result=0
  output1=$(${cmd} --version 2>&1) || result=$?
  if [ ! "${result}" = "0" ]; then
    echo >&2 "ERROR: command '${cmd}' not found."
    exit ${result}
  fi
done
