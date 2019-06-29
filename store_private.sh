#!/bin/sh

#TODO - this screws up arguments with spaces u_u

if [[ $# -eq 1 ]]
then
  FULL_PATH=$(readlink -f $1)
  if [[ -e $FULL_PATH ]]
  then
    echo "copying $FULL_PATH"
    cp -r --parents --preserve=all "$FULL_PATH" ./privatefs/
  else
    >&2 echo "path not found! $FULL_PATH"
    exit 1
  fi
else
  >&2 echo "ERROR - wrong number of arguments passed to store_private"
  exit 1
fi


